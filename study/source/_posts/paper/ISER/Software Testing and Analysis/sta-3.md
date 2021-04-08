---
title: "[ISER] [STA] A lightweight, general system for finding serious storage system errors"
categories:
  - paper
date: 2020-09-18 18:24:20
tags: Software Testing and Analysis
description: "Junfeng Yang, Can Sar, and Dawson Engler. eXplode: A lightweight, general system for finding serious storage system errors. OSDI'06"
---

### Abstract
> Storage systems such as file systems, databases, and RAID systems have a simple, basic contract: you give them data, they do not lose or corrupt it. Often they store the only copy, making its irrevocable loss almost arbitrarily bad. Unfortunately, their code is exceptionally hard to get right, since it must correctly recover from any crash at any program point, no matter how their state was smeared across volatile and persistent memory.

> This paper describes EXPLODE, a system that makes it easy to systematically check real storage systems for errors. It takes user-written, potentially system-specific checkers and uses them to drive a storage system into tricky corner cases, including crash recovery errors. EXPLODE uses a novel adaptation of ideas from model checking, a comprehensive, heavyweight formal verification technique, that makes its checking more systematic (and hopefully more effective) than a pure testing approach while being just as lightweight.

> EXPLODE is effective. It found serious bugs in a broad range
of real storage systems (without requiring source code): three
version control systems, Berkeley DB, an NFS implementation,
ten file systems, a RAID system, and the popular VMware GSX
virtual machine. We found bugs in every system we checked,
36 bugs in total, typically with little effort.


keywords:

### 总体评价

### Motivation
文件系统中会有各种各样的机制来预防崩溃，而如果这些机制中也出现了bug，那会是十分严重的。但是目前已有的工作检测文件系统中的bug的方法还是非常的原始和低效的，因此就开发了一个新的工具（严重缺乏操作系统关于文件系统的知识，很多地方没看懂）
### Evalution

### Details