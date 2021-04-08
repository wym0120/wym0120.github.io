---
title: 由pipeline和重定向引发的血案
date: 2020-07-20 01:17:17
tags:
- os
categories:
- [os,os lecture]
description: 一个有趣的并发问题
---

### 问题重现
因为想要去除某一段文本里面的所有换行，因此编写了一个脚本
```sh
#!/bin/bash
cat $1 | tr "\n" " " > $1
```

然而这段脚本的执行并不如我预期中的那样能够把输出重定向回文件，而是反而清空了文件

StackOverflow上面的回答
https://stackoverflow.com/questions/3055005/is-it-ok-to-use-the-same-input-file-as-output-of-a-piped-command
https://stackoverflow.com/questions/39426655/redirecting-the-cat-ouput-of-file-to-the-same-file

> All commands in a pipeline execute at the same time, and the shell prepares redirections before executing the commands. So, it is likely that the command will overwrite the file before cat reads it.

这个回答里涉及到了几点：
1. pipeline中各个进程的执行时机
2. 重定向、pipeline与指令之间的执行顺序
3. overwrite文件
   
#### 执行时机
下面是两份strace log的执行结果，可以看到需要执行cat和tr的进程都是从sh的进程中clone出来的，的确是同时执行的，唯一的保证就是将前一个进程的输出成功的重定向到下一个进程的输入。这是由pipeline保证的。

man bash中提到
> The standard output of command is connected via a pipe to the standard input of command2.  This connection is performed before any redirections specified by the command.

> Before a command is executed, its input and output may be redirected using a special  notation interpreted by the shell.

由此可以看出三者的执行顺序是 pipeline连接两个指令之间的标准输入和标准输出 > 重定向 > 指令执行

#### strace结果

##### 清空了文件的strace log
```sh
9855  execve("/bin/sh", ["sh", "-c", "cat 1-redirect | tr \"\\n\" \" \" > 1"...], 0x7ffce75660f8 /* 61 vars */) = 0
9855  access("/etc/ld.so.nohwcap", F_OK) = -1 ENOENT (No such file or directory)
9855  access("/etc/ld.so.preload", R_OK) = -1 ENOENT (No such file or directory)
9855  openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
9855  fstat(3, {st_mode=S_IFREG|0644, st_size=103311, ...}) = 0
9855  close(3)                          = 0
9855  access("/etc/ld.so.nohwcap", F_OK) = -1 ENOENT (No such file or directory)
9855  openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
9855  read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\260\34\2\0\0\0\0\0"..., 832) = 832
9855  fstat(3, {st_mode=S_IFREG|0755, st_size=2030544, ...}) = 0
9855  close(3)                          = 0
9855  arch_prctl(ARCH_SET_FS, 0x7f32b9ad0540) = 0
9855  getuid()                          = 1000
9855  getgid()                          = 1000
9855  getpid()                          = 9855
9855  rt_sigaction(SIGCHLD, {sa_handler=0x558b265a3200, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7f32b9511fd0}, NULL, 8) = 0
9855  geteuid()                         = 1000
9855  getppid()                         = 9853
9855  stat("/home/wym0120/have-a-try", {st_mode=S_IFDIR|0755, st_size=4096, ...}) = 0
9855  stat(".", {st_mode=S_IFDIR|0755, st_size=4096, ...}) = 0
9855  geteuid()                         = 1000
9855  getegid()                         = 1000
9855  rt_sigaction(SIGINT, NULL, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
9855  rt_sigaction(SIGINT, {sa_handler=0x558b265a3200, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7f32b9511fd0}, NULL, 8) = 0
9855  rt_sigaction(SIGQUIT, NULL, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
9855  rt_sigaction(SIGQUIT, {sa_handler=SIG_DFL, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7f32b9511fd0}, NULL, 8) = 0
9855  rt_sigaction(SIGTERM, NULL, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
9855  rt_sigaction(SIGTERM, {sa_handler=SIG_DFL, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7f32b9511fd0}, NULL, 8) = 0
9855  stat("/home/wym0120/.autojump/bin/cat", 0x7ffd51e78a30) = -1 ENOENT (No such file or directory)
9855  stat("/usr/local/sbin/cat", 0x7ffd51e78a30) = -1 ENOENT (No such file or directory)
9855  stat("/usr/local/bin/cat", 0x7ffd51e78a30) = -1 ENOENT (No such file or directory)
9855  stat("/usr/sbin/cat", 0x7ffd51e78a30) = -1 ENOENT (No such file or directory)
9855  stat("/usr/bin/cat", 0x7ffd51e78a30) = -1 ENOENT (No such file or directory)
9855  stat("/sbin/cat", 0x7ffd51e78a30) = -1 ENOENT (No such file or directory)
9855  stat("/bin/cat", {st_mode=S_IFREG|0755, st_size=35064, ...}) = 0
9855  pipe([3, 4])                      = 0
9855  clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7f32b9ad0810) = 9856
9855  close(4)                          = 0
9855  stat("/home/wym0120/.autojump/bin/tr", 0x7ffd51e78a30) = -1 ENOENT (No such file or directory)
9855  stat("/usr/local/sbin/tr", 0x7ffd51e78a30) = -1 ENOENT (No such file or directory)
9855  stat("/usr/local/bin/tr", 0x7ffd51e78a30) = -1 ENOENT (No such file or directory)
9855  stat("/usr/sbin/tr", 0x7ffd51e78a30) = -1 ENOENT (No such file or directory)
9855  stat("/usr/bin/tr", {st_mode=S_IFREG|0755, st_size=47288, ...}) = 0
9855  clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7f32b9ad0810) = 9857
9855  close(3)                          = 0
9855  close(-1)                         = -1 EBADF (Bad file descriptor)
9855  wait4(-1,  <unfinished ...>
9857  dup2(3, 0 <unfinished ...>
9856  close(3 <unfinished ...>
9857  <... dup2 resumed> )              = 0
9856  <... close resumed> )             = 0
9857  close(3 <unfinished ...>
9856  dup2(4, 1 <unfinished ...>
9857  <... close resumed> )             = 0
9856  <... dup2 resumed> )              = 1
9857  openat(AT_FDCWD, "1-redirect", O_WRONLY|O_CREAT|O_TRUNC, 0666 <unfinished ...>
9856  close(4)                          = 0
9857  <... openat resumed> )            = 3
9857  fcntl(1, F_DUPFD, 10 <unfinished ...>
9856  execve("/bin/cat", ["cat", "1-redirect"], 0x558b274b7fe8 /* 61 vars */ <unfinished ...>
9857  <... fcntl resumed> )             = 10
9857  close(1)                          = 0
9856  <... execve resumed> )            = 0
9857  fcntl(10, F_SETFD, FD_CLOEXEC)    = 0
9857  dup2(3, 1 <unfinished ...>
9856  access("/etc/ld.so.nohwcap", F_OK <unfinished ...>
9857  <... dup2 resumed> )              = 1
9857  close(3 <unfinished ...>
9856  <... access resumed> )            = -1 ENOENT (No such file or directory)
9857  <... close resumed> )             = 0
9856  access("/etc/ld.so.preload", R_OK <unfinished ...>
9857  execve("/usr/bin/tr", ["tr", "\\n", " "], 0x558b274b8268 /* 61 vars */ <unfinished ...>
9856  <... access resumed> )            = -1 ENOENT (No such file or directory)
9856  openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC <unfinished ...>
9857  <... execve resumed> )            = 0
9856  <... openat resumed> )            = 3
9856  fstat(3, {st_mode=S_IFREG|0644, st_size=103311, ...}) = 0
9857  access("/etc/ld.so.nohwcap", F_OK) = -1 ENOENT (No such file or directory)
9856  close(3 <unfinished ...>
9857  access("/etc/ld.so.preload", R_OK <unfinished ...>
9856  <... close resumed> )             = 0
9857  <... access resumed> )            = -1 ENOENT (No such file or directory)
9856  access("/etc/ld.so.nohwcap", F_OK <unfinished ...>
9857  openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC <unfinished ...>
9856  <... access resumed> )            = -1 ENOENT (No such file or directory)
9857  <... openat resumed> )            = 3
9856  openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC <unfinished ...>
9857  fstat(3,  <unfinished ...>
9856  <... openat resumed> )            = 3
9857  <... fstat resumed> {st_mode=S_IFREG|0644, st_size=103311, ...}) = 0
9856  read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\260\34\2\0\0\0\0\0"..., 832) = 832
9857  close(3 <unfinished ...>
9856  fstat(3,  <unfinished ...>
9857  <... close resumed> )             = 0
9856  <... fstat resumed> {st_mode=S_IFREG|0755, st_size=2030544, ...}) = 0
9857  access("/etc/ld.so.nohwcap", F_OK) = -1 ENOENT (No such file or directory)
9857  openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
9857  read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\260\34\2\0\0\0\0\0"..., 832) = 832
9857  fstat(3, {st_mode=S_IFREG|0755, st_size=2030544, ...}) = 0
9856  close(3)                          = 0
9856  arch_prctl(ARCH_SET_FS, 0x7fc0f8b44540) = 0
9857  close(3)                          = 0
9857  arch_prctl(ARCH_SET_FS, 0x7f56e0751540) = 0
9856  openat(AT_FDCWD, "/usr/lib/locale/locale-archive", O_RDONLY|O_CLOEXEC) = 3
9856  fstat(3, {st_mode=S_IFREG|0644, st_size=3004224, ...}) = 0
9856  close(3)                          = 0
9857  openat(AT_FDCWD, "/usr/lib/locale/locale-archive", O_RDONLY|O_CLOEXEC <unfinished ...>
9856  fstat(1,  <unfinished ...>
9857  <... openat resumed> )            = 3
9857  fstat(3,  <unfinished ...>
9856  <... fstat resumed> {st_mode=S_IFIFO|0600, st_size=0, ...}) = 0
9857  <... fstat resumed> {st_mode=S_IFREG|0644, st_size=3004224, ...}) = 0
9856  openat(AT_FDCWD, "1-redirect", O_RDONLY) = 3
9856  fstat(3,  <unfinished ...>
9857  close(3 <unfinished ...>
9856  <... fstat resumed> {st_mode=S_IFREG|0644, st_size=0, ...}) = 0
9857  <... close resumed> )             = 0
9856  fadvise64(3, 0, 0, POSIX_FADV_SEQUENTIAL <unfinished ...>
9857  fadvise64(0, 0, 0, POSIX_FADV_SEQUENTIAL <unfinished ...>
9856  <... fadvise64 resumed> )         = 0
9857  <... fadvise64 resumed> )         = -1 ESPIPE (Illegal seek)
9857  read(0,  <unfinished ...>
9856  read(3, "", 131072)               = 0
9856  close(3)                          = 0
9856  close(1 <unfinished ...>
9857  <... read resumed> "", 8192)      = 0
9856  <... close resumed> )             = 0
9857  close(0 <unfinished ...>
9856  close(2 <unfinished ...>
9857  <... close resumed> )             = 0
9856  <... close resumed> )             = 0
9857  close(1)                          = 0
9856  exit_group(0 <unfinished ...>
9857  close(2 <unfinished ...>
9856  <... exit_group resumed>)         = ?
9857  <... close resumed> )             = 0
9857  exit_group(0 <unfinished ...>
9856  +++ exited with 0 +++
9855  <... wait4 resumed> [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 9856
9857  <... exit_group resumed>)         = ?
9855  --- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=9856, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
9855  rt_sigreturn({mask=[]})           = 9856
9855  wait4(-1,  <unfinished ...>
9857  +++ exited with 0 +++
9855  <... wait4 resumed> [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 9857
9855  --- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=9857, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
9855  rt_sigreturn({mask=[]})           = 9857
9855  exit_group(0)                     = ?
9855  +++ exited with 0 +++
```

##### 能够顺利输出的strace log
```sh
10498 execve("/bin/sh", ["sh", "-c", "cat 1-redirect | tr \"\\n\" \" \" > 1"...], 0x7ffebaf3b058 /* 61 vars */) = 0
10498 access("/etc/ld.so.nohwcap", F_OK) = -1 ENOENT (No such file or directory)
10498 access("/etc/ld.so.preload", R_OK) = -1 ENOENT (No such file or directory)
10498 openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
10498 fstat(3, {st_mode=S_IFREG|0644, st_size=103311, ...}) = 0
10498 close(3)                          = 0
10498 access("/etc/ld.so.nohwcap", F_OK) = -1 ENOENT (No such file or directory)
10498 openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
10498 read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\260\34\2\0\0\0\0\0"..., 832) = 832
10498 fstat(3, {st_mode=S_IFREG|0755, st_size=2030544, ...}) = 0
10498 close(3)                          = 0
10498 arch_prctl(ARCH_SET_FS, 0x7f27de8b8540) = 0
10498 getuid()                          = 1000
10498 getgid()                          = 1000
10498 getpid()                          = 10498
10498 rt_sigaction(SIGCHLD, {sa_handler=0x561b04ce9200, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7f27de2f9fd0}, NULL, 8) = 0
10498 geteuid()                         = 1000
10498 getppid()                         = 10496
10498 stat("/home/wym0120/have-a-try", {st_mode=S_IFDIR|0755, st_size=4096, ...}) = 0
10498 stat(".", {st_mode=S_IFDIR|0755, st_size=4096, ...}) = 0
10498 geteuid()                         = 1000
10498 getegid()                         = 1000
10498 rt_sigaction(SIGINT, NULL, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
10498 rt_sigaction(SIGINT, {sa_handler=0x561b04ce9200, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7f27de2f9fd0}, NULL, 8) = 0
10498 rt_sigaction(SIGQUIT, NULL, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
10498 rt_sigaction(SIGQUIT, {sa_handler=SIG_DFL, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7f27de2f9fd0}, NULL, 8) = 0
10498 rt_sigaction(SIGTERM, NULL, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
10498 rt_sigaction(SIGTERM, {sa_handler=SIG_DFL, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7f27de2f9fd0}, NULL, 8) = 0
10498 stat("/home/wym0120/.autojump/bin/cat", 0x7ffd8439c6d0) = -1 ENOENT (No such file or directory)
10498 stat("/usr/local/sbin/cat", 0x7ffd8439c6d0) = -1 ENOENT (No such file or directory)
10498 stat("/usr/local/bin/cat", 0x7ffd8439c6d0) = -1 ENOENT (No such file or directory)
10498 stat("/usr/sbin/cat", 0x7ffd8439c6d0) = -1 ENOENT (No such file or directory)
10498 stat("/usr/bin/cat", 0x7ffd8439c6d0) = -1 ENOENT (No such file or directory)
10498 stat("/sbin/cat", 0x7ffd8439c6d0) = -1 ENOENT (No such file or directory)
10498 stat("/bin/cat", {st_mode=S_IFREG|0755, st_size=35064, ...}) = 0
10498 pipe([3, 4])                      = 0
10498 clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7f27de8b8810) = 10499
10498 close(4)                          = 0
10499 close(3 <unfinished ...>
10498 stat("/home/wym0120/.autojump/bin/tr",  <unfinished ...>
10499 <... close resumed> )             = 0
10498 <... stat resumed> 0x7ffd8439c6d0) = -1 ENOENT (No such file or directory)
10499 dup2(4, 1 <unfinished ...>
10498 stat("/usr/local/sbin/tr",  <unfinished ...>
10499 <... dup2 resumed> )              = 1
10498 <... stat resumed> 0x7ffd8439c6d0) = -1 ENOENT (No such file or directory)
10499 close(4 <unfinished ...>
10498 stat("/usr/local/bin/tr",  <unfinished ...>
10499 <... close resumed> )             = 0
10499 execve("/bin/cat", ["cat", "1-redirect"], 0x561b05f9afe8 /* 61 vars */ <unfinished ...>
10498 <... stat resumed> 0x7ffd8439c6d0) = -1 ENOENT (No such file or directory)
10498 stat("/usr/sbin/tr",  <unfinished ...>
10499 <... execve resumed> )            = 0
10498 <... stat resumed> 0x7ffd8439c6d0) = -1 ENOENT (No such file or directory)
10498 stat("/usr/bin/tr", {st_mode=S_IFREG|0755, st_size=47288, ...}) = 0
10499 access("/etc/ld.so.nohwcap", F_OK <unfinished ...>
10498 clone( <unfinished ...>
10499 <... access resumed> )            = -1 ENOENT (No such file or directory)
10499 access("/etc/ld.so.preload", R_OK <unfinished ...>
10498 <... clone resumed> child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7f27de8b8810) = 10500
10499 <... access resumed> )            = -1 ENOENT (No such file or directory)
10498 close(3 <unfinished ...>
10499 openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC <unfinished ...>
10498 <... close resumed> )             = 0
10499 <... openat resumed> )            = 3
10498 close(-1 <unfinished ...>
10499 fstat(3,  <unfinished ...>
10498 <... close resumed> )             = -1 EBADF (Bad file descriptor)
10499 <... fstat resumed> {st_mode=S_IFREG|0644, st_size=103311, ...}) = 0
10498 wait4(-1,  <unfinished ...>
10499 close(3)                          = 0
10499 access("/etc/ld.so.nohwcap", F_OK) = -1 ENOENT (No such file or directory)
10499 openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
10499 read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\260\34\2\0\0\0\0\0"..., 832) = 832
10499 fstat(3, {st_mode=S_IFREG|0755, st_size=2030544, ...}) = 0
10499 close(3)                          = 0
10499 arch_prctl(ARCH_SET_FS, 0x7fd66ec12540) = 0
10499 openat(AT_FDCWD, "/usr/lib/locale/locale-archive", O_RDONLY|O_CLOEXEC) = 3
10499 fstat(3, {st_mode=S_IFREG|0644, st_size=3004224, ...}) = 0
10499 close(3)                          = 0
10499 fstat(1, {st_mode=S_IFIFO|0600, st_size=0, ...}) = 0
10499 openat(AT_FDCWD, "1-redirect", O_RDONLY) = 3
10499 fstat(3, {st_mode=S_IFREG|0644, st_size=11, ...}) = 0
10499 fadvise64(3, 0, 0, POSIX_FADV_SEQUENTIAL) = 0
10499 read(3, "havenantry\n", 131072)   = 11
10499 write(1, "havenantry\n", 11)      = 11
10499 read(3, "", 131072)               = 0
10499 close(3)                          = 0
10499 close(1)                          = 0
10499 close(2)                          = 0
10499 exit_group(0)                     = ?
10499 +++ exited with 0 +++
10498 <... wait4 resumed> [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 10499
10498 --- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=10499, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
10498 rt_sigreturn({mask=[]})           = 10499
10498 wait4(-1,  <unfinished ...>
10500 dup2(3, 0)                        = 0
10500 close(3)                          = 0
10500 openat(AT_FDCWD, "1-redirect", O_WRONLY|O_CREAT|O_TRUNC, 0666) = 3
10500 fcntl(1, F_DUPFD, 10)             = 10
10500 close(1)                          = 0
10500 fcntl(10, F_SETFD, FD_CLOEXEC)    = 0
10500 dup2(3, 1)                        = 1
10500 close(3)                          = 0
10500 execve("/usr/bin/tr", ["tr", "\\n", " "], 0x561b05f9b268 /* 61 vars */) = 0
10500 access("/etc/ld.so.nohwcap", F_OK) = -1 ENOENT (No such file or directory)
10500 access("/etc/ld.so.preload", R_OK) = -1 ENOENT (No such file or directory)
10500 openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
10500 fstat(3, {st_mode=S_IFREG|0644, st_size=103311, ...}) = 0
10500 close(3)                          = 0
10500 access("/etc/ld.so.nohwcap", F_OK) = -1 ENOENT (No such file or directory)
10500 openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
10500 read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\260\34\2\0\0\0\0\0"..., 832) = 832
10500 fstat(3, {st_mode=S_IFREG|0755, st_size=2030544, ...}) = 0
10500 close(3)                          = 0
10500 arch_prctl(ARCH_SET_FS, 0x7f112f724540) = 0
10500 openat(AT_FDCWD, "/usr/lib/locale/locale-archive", O_RDONLY|O_CLOEXEC) = 3
10500 fstat(3, {st_mode=S_IFREG|0644, st_size=3004224, ...}) = 0
10500 close(3)                          = 0
10500 fadvise64(0, 0, 0, POSIX_FADV_SEQUENTIAL) = -1 ESPIPE (Illegal seek)
10500 read(0, "havenantry\n", 8192)     = 11
10500 fstat(1, {st_mode=S_IFREG|0644, st_size=0, ...}) = 0
10500 read(0, "", 8192)                 = 0
10500 close(0)                          = 0
10500 write(1, "havenantry ", 11)       = 11
10500 close(1)                          = 0
10500 close(2)                          = 0
10500 exit_group(0)                     = ?
10500 +++ exited with 0 +++
10498 <... wait4 resumed> [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 10500
10498 --- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=10500, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
10498 rt_sigreturn({mask=[]})           = 10500
10498 exit_group(0)                     = ?
10498 +++ exited with 0 +++
```


### 问题的本质
1. 为什么数据会被清空？
```sh
openat(AT_FDCWD, "1-redirect", O_WRONLY|O_CREAT|O_TRUNC, 0666) = 3
```

man 2 open中提到
> If O_TRUNC is specified and the file exists, the file is truncated to zero length.

tr进程中试图重定向输出到一个已经打开的文件$1中，因此$1的文件就会被清空。

2. 为什么会出现有时能够成功输出的情况
这是一个进程间数据竞争的问题，如果cat在tr进程把文件清空之前读出来了数据
那么数据就会被写入cat的标准输出，然后通过pipeline被tr进程读取
完成了这一步之后tr进程因为重定向会将文件清空，但是能够从标准输入中读取到原来的数据
然后执行tr，最后使用了一个write进行写入

### 另一个有趣的现象
如果把>修改为>>，例如cat tmp>>tmp
在Linux中会无法执行，提示input file is output file，而在macos zsh下则会无限循环
猜测：cat的标准输出和标准输入被重定向到了同一个文件，因此cat检查文件是否结束时会检查到刚被写入文件的一行，就始终无法结束