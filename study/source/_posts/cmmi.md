---
title: "[课堂笔记] 软件过程改进"
mathjax: true
date: 2021-04-12 23:24:08
tags: lecture
categories:
description: 软件过程改进课堂笔记
---
# CMMI 复习总结

- [CMMI 复习总结](#cmmi-复习总结)
  - [过程改进](#过程改进)
    - [过程的定义](#过程的定义)
    - [过程改进的好处](#过程改进的好处)
  - [连续式表示法与阶段式表示法](#连续式表示法与阶段式表示法)
  - [等价阶段式定级](#等价阶段式定级)
  - [关于 CMMI 模型的一系列理解](#关于-cmmi-模型的一系列理解)
    - [为什么要有标准过程](#为什么要有标准过程)
    - [如何使用过程模型](#如何使用过程模型)
    - [为什么过程模型很重要](#为什么过程模型很重要)
  - [关于 CMMI 模型的一系列知识点](#关于-cmmi-模型的一系列知识点)
- [通用目标与通用实践](#通用目标与通用实践)
  - [对制度化的理解](#对制度化的理解)
  - [对通用实践的理解](#对通用实践的理解)
  - [通用实践和过程域的关系](#通用实践和过程域的关系)
  - [已执行、已管理、已定义之间的区别](#已执行已管理已定义之间的区别)
  - [过程之间的关系](#过程之间的关系)
  - [通用目标与通用实践](#通用目标与通用实践-1)
    - [GG1 达成特定目标](#gg1-达成特定目标)
    - [GG2 制度化为已管理的过程](#gg2-制度化为已管理的过程)
    - [GG3 制度化为已定义的过程](#gg3-制度化为已定义的过程)
    - [相关问题](#相关问题)
- [过程域](#过程域)
  - [过程域的定义](#过程域的定义)
  - [过程管理类](#过程管理类)
    - [Lv3组织级过程定义(OPD)](#lv3组织级过程定义opd)
    - [Lv3组织级过程关注(OPF)](#lv3组织级过程关注opf)
    - [Lv3组织级培训(OT)](#lv3组织级培训ot)
    - [Lv4组织级过程性能(OPP)](#lv4组织级过程性能opp)
    - [Lv5组织级绩效管理(OPM)](#lv5组织级绩效管理opm)
  - [项目管理类](#项目管理类)
    - [Lv2项目监督与控制(PMC)](#lv2项目监督与控制pmc)
    - [Lv2项目计划(PP)](#lv2项目计划pp)
    - [Lv2需求管理(REQM)](#lv2需求管理reqm)
    - [Lv2供方协议管理(SAM)](#lv2供方协议管理sam)
    - [Lv3风险管理(RSKM)](#lv3风险管理rskm)
    - [Lv3集成项目管理(IPM)](#lv3集成项目管理ipm)
    - [Lv4量化项目管理(QPM)](#lv4量化项目管理qpm)
  - [工程类](#工程类)
    - [Lv3需求开发 (RD)](#lv3需求开发-rd)
    - [Lv3技术解决方案(TS)](#lv3技术解决方案ts)
    - [Lv3产品集成(PI)](#lv3产品集成pi)
    - [Lv3确认(VAL)](#lv3确认val)
    - [Lv3验证 (VER)](#lv3验证-ver)
  - [支持类](#支持类)
    - [Lv2度量与分析(MA)](#lv2度量与分析ma)
    - [Lv2配置管理(CM)](#lv2配置管理cm)
    - [Lv2过程与产品质量保证(PPQA)](#lv2过程与产品质量保证ppqa)
    - [Lv3决策分析与解决(DAR)](#lv3决策分析与解决dar)
    - [Lv5原因分析与解决(CAR)](#lv5原因分析与解决car)
- [PPT 中问题整理](#ppt-中问题整理)


## 过程改进
### 过程的定义

> - **IEEE: Sequence of steps performed for a given purpose**
- **PALL: Logical organization of people, materials, energy, equipment, and procedures into work activities designed to produce a specified end result**
- **CMMI GLOSSARY: A set of interrelated activities, which transform in puts into outputs, to achieve a given purpose (These activities can be mapped to one or more practices in CMMI process areas to allow a model to be useful for process improvement and process appraisal.)**

![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20210413091924.png)

**如上图所示，将这三个重要方面结合到一起的是组织中所使用的过程。**

### 过程改进的好处
- 过程使您能够了解正在发生的事情。
- 通过定义，测量和控制过程，改进将更加成功和持久。 
- 成功引入适当的技术，技巧和工具的可能性增加。
- 人们可以更加充分地发挥潜力，更加有效。

---

## 连续式表示法与阶段式表示法
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20210413092723.png)

> CMMI 支持两种使用级别的改进路径。一条路径使组织能够逐步改进其选定的单个过程域(或一组过程域)所对应的过程。另一条路径使组织能够以增量方式应对层次相继的过程域集合来改进相关的过程集。连续式表示法的关注点在于由能力等级度量的过程域能力，而阶段式表示法的关注点在于由成熟度级别度量的总体成熟度。
> 
> 随着组织达成某一成熟度级别中一系列过程域的通用目标和特定目标，组织在提升组织级成熟度的同时也收获了过程改进带来的收益。 由于每一成熟度级别都为下一级别打下必要的基础，因此，**在成熟度级别上的跳级尝试往往会导致反效果。**
> 
>  **同时**，需要认识到的是，过程改进活动应该关注于以组织的业务环境为背景的组织需要上，并认识到更高的成熟度级别中的过程域可以应对组织或项目的当前的与未来的需要。**例如虽然过程组并非成熟度级别 2 级组织的必要特征，但是它可以成为组织达成成熟度级别 2 级途径中的有用部分。**
>
> 大多数组织对其所选的过程域，至少会选择能力等级 1 级作为目标，这要求达成所有选定过程域的特定目标。然而，将目标定于高于能力等级 1 级的组织会通过实施通用目标与通用实践，来专注于组织内所选过程的制度化。适用于每个过程域的通用目标也已预设完成。通用目标 2 适用于成熟度级别 2 级，通用目标 3 适用于成熟度级别 3 级到 5 级。

---

## 等价阶段式定级

![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20210413165108.png)

## 关于 CMMI 模型的一系列理解
> 能力成熟度模型(Capability Maturity Model，CMM)，包括 CMMI，都是对现实世界的简化表述，它涵盖了开发产品与服务的活动。CMMI 开发模型是一个参考模型，是实践的结构化集合，描述了有效过程的特征。CMMI 开发模型并不规定项目或组织必须遵循特定的过程顺序，或每天必须开发出一定数量的产品，或必须达成特定的绩效指标。模型所规定的是项目或组织应该具备应对开发相关实践的过程。项目或组织可将其过程映射至本模型中的过程域，以确定这些过程是否具备。

### 为什么要有标准过程
> 标准过程并不是教条主义，而是为了让项目小组更好地识别其他团队的优秀做法，促进共享。

### 如何使用过程模型
>帮助设定过程改进目标和优先级; 帮助确保稳定，有能力且成熟的过程;作为改善项目和组织过程的指南;通过评估方法来诊断组织当前的实践状态

### 为什么过程模型很重要
> 过程模型提供一个开始改进的地方;社区先前经验的好处;共同的语言和共同的愿景;优先行动的框架
定义改进对组织意味着什么的方法

## 关于 CMMI 模型的一系列知识点
1. CMMIv1.2分为哪三个集群
   
> - 面向开发的CMMI(CMMI-DEV)
- 面向采购的CMMI(CMMI-ACQ)
- 面向服务的CMMI(CMMI-SVC)

2. CMMI来源于那三个模型 ，研究机构

> - 软件工程 sw-cmm
- 系统工程  EIA/IS
- 集成化产品和过程开发 IPD-CMM

3. 评估方法简述，评估三种类型、评估的主要依据、评估的结果
   
> - SCAMPI评估方法是用于过程改进的标准CMMI评估方法
> - SCAMPI评估方法有三种类型:
>     - Class A:凡是按体系要求的项目都需要按体系要求做，评估的时候采取抽样评估；
>     - Class B:评估试点项目与体系文档、CMMI模型的符合度；
>     - Class C:评估完成的过程体系与CMMI模型的差距；
> - 目标下的全部实践被全部实施或者被大部分实施，所有缺点不会影响目标的达成。

---

# 通用目标与通用实践
## 对制度化的理解
> 制度化是过程改进中的一个重要概念。当制度化在通用目标与通用实践的描述中被提及时，就意味着该过程已根植于工作的执行方式中，并且具有过程履行(即执行)的承诺与一致性。已制度化的过程在有压力的情况下更可能得到保持。
>
> **说人话就是“主动的、习惯成自然”。接下来引出通用目标和通用实践，这两个东西就是帮助制度化的工具。**

## 对通用实践的理解
> 通用实践之所以被称为“通用”，是因为相同的实践适用于多个过程域。 与通用目标相关联的通用实践描述了一些活动，这些活动被认为对通用目标的达成具有重要意义，并且有助于过程域所关联过程的制度化。通用实践是可以应用于所有过程域的组件。要将通用实践视为提醒。其目的在于提醒你正确地做事，属于期望的模型组件。

## 通用实践和过程域的关系
> 如果说通用目标与通用实践是直接应对过程在组织范围内制度化的模型组件，那么很多过程域则通过支持通用实践的实施来应对制度化。此类过程域含有一个或多个特定实践，当其被实施时，某一通用实践也能得到完全的实施，或产生工作产品用于某一通用实践的实施。

## 已执行、已管理、已定义之间的区别
> 已执行的过程是指完成了所需工作而满足过程域的特定目标的过程。
> 
> 已执行与已管理之间的关键区别在于过程得到管理的程度。已管理的过程得到了计划(该计划可以是一份更全面的计划的一部分)，并且过程的执行依据计划得到了管理。当实际结果与执行情况显著偏离计划时，会采取纠正措施。已管理的过程能达成该计划的目标，并得到了制度化以实现执行上的一致。
>
> 已管理与已定义之间的关键区别在于过程描述、标准与规程的适用范围。对于已管理的过程，其过程描述、标准与规程适用于特定的 项目、组或组织级功能。因此，同一组织内的两个项目，其已管理的过程可能并不相同。
>
> 另一项关键区别在于，相比已管理的过程，已定义的过程描述更为详细， 执行更为严格。这一区别意味着改进信息更容易被理解、分析并使用。最后，已定义过程的管理建立在更为深入的理解之上，包括在过程活动的相互关系方面的理解，以及在过程、过程工作产品与过程服务的详细度量项方面的理解。
>
> **说人话就是已执行就是把工作做完了; 已管理在这个基础之上关注了管理的三大要素:时间、质量、成本; 而已定义则是各方面都更加熟练的管理，翻车几率更小**

## 过程之间的关系
> GG1 就相当于所有的 SG 的总和。
> 
> 达成过程域的 GG1，就等于说你达成了该过程域的特定目标。
> 
> 达成过程域的 GG2，就等于说你管理了与该过程域相关联的过程的执行。过程就如同任何项目或 支持活动那样得到了计划与监督。
> 
> 达成过程域的 GG3，就等于说存在组织级标准过程，能够对其进行裁剪(按标准原样执行也是一种裁剪)得到你将要使用的过程。

## 通用目标与通用实践
### GG1 达成特定目标
> 过程域的特定目标得到过程的支持，过程的支持通过将可识别的输入工作产品转换为可识别的输出工作产品来实现。

|通用实践|描述|
|---|---|
|GP 1.1 执行特定实践|**执行过程域的特定实践，以开发工作产品并提供服务来达成过程域的特定目标。**|

### GG2 制度化为已管理的过程
> 过程得到制度化为已管理的过程。

|通用实践|描述|
|---|---|
|GP 2.1 建立组织级方针|**建立并维护组织级方针，以计划并执行过程。**|
|GP 2.2 计划过程|**建立并维护计划，以执行过程。**|
|GP 2.3 提供资源|**提供充分的资源，以执行过程、开发工作产品并提供过程的服务。**|
|GP 2.4 分派职责|**分派职责与职权，以执行过程、开发工作产品并提供过程的服务。**|
|GP 2.5 培训人员|**必要时，培训过程的执行或支持人员。**|
|GP 2.6 控制工作产品|**将所选择的过程工作产品置于适当的控制级别。**|
|GP 2.7 识别相关干系人，并使之参与|**识别过程的相关干系人，并使之按计划参与。**|
|GP 2.8 监督并控制过程|**对照执行过程的计划，监督并控制过程，并采取适当的纠正措施。**|
|GP 2.9 客观评价遵守程度|**对照过程描述、标准与规程，对过程与所选工作产品的遵守程度进行客观评价，并处理不符合的情况。**|
|GP 2.10 与上级管理层一起进行状态评审|**与上级管理层一起对过程的活动、状态与结果进行评审，并解决问题。**|

### GG3 制度化为已定义的过程
> 过程得到制度化为已定义的过程

|通用实践|描述|
|---|---|
GP 3.1 建立已定义的过程|**建立并维护已定义过程的描述。**|
|GP 3.2 收集与过程相关的经验|**收集源于过程的计划与执行的、与过程相关的经验，以支持组织过程与过程资产未来的使用与改进。**|

### 相关问题
1. GP2.3资源的分类例举
```
1)硬件，如电脑、投影、会议室等；
2)软件，如办公软件、开发平台等；
3)文档，如模板、指南等；
4)人员，就是做这个事情的人了
 ```
2. GP2.5的培训，组织过程相关的pa培训如何进行
```
(1)内部：除了过程改进的相关过程域可以由EPG(过程改造专员)进行培训
(2)外部：过程改进以”O”字打头的这些比较特殊的过程域请培训机构进行培训
```

3. GP2.7识别和使卷入的英文、两个词语的动作过程解释(不用记英文)
```
识别：把干系人识别出来，认识出来，写到计划文档里头去
使卷入：让干系人参与我们的评审过程。比如开评审会议时，需要提意见
```

4. GP2.10中领导的描述在CMM和CMMi中的差别，CMMI的改进有何具体意义
```
CMM： high management(高层领导)
CMMI: higher level management(高级别领导)
高层领导是提供一些授权，赋予你一定的权利。在资源方面提供大方向的把握。
高级别领导能够在问题解决的实际意义上和资源的调剂上面起到实质性的作用
```

5. PP过程域的GP2.2如何实现；PMC中的GP2.8如何实现
```
GP2.2实现： 
必须在写项目规划之前如何进行项目估算，如何把握所有项目参数，建一个比较好的项目计划文档，要进行充分的前期调研工作并且安排好自己的工作，按时进行评审写项目计划文档。(就是在项目过程域计划之前做好规划)
GP2.8实现： 
要求QA，项目经理要给高层(QA经理PMO)进行项目周报的汇报，进行工作日志的汇报，由PMO来行使PMC的监督工作
```

---

# 过程域
## 过程域的定义
> 某个领域中的一系列相关实践，如果共同实施，则可以满足一系列目标，这些目标对于该领域的改进至关重要

## 过程管理类

![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20210413094344.png)

![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20210413094416.png)

### Lv3组织级过程定义(OPD)
> **目的**: 建立并维护一套可用的组织级过程资产、工作环境标准以及团队规则与指南。
>
> **概要**
>
> - SG 1 建立组织级过程资产
>     - SP 1.1 建立标准过程
>     - SP 1.2 建立生命周期模型描述
>     - SP 1.3 建立裁剪准则与指南
>     - SP 1.4 建立组织的度量库
>     - SP 1.5 建立组织的过程资产库
>     - SP 1.6 建立工作环境标准
>     - SP 1.7 建立团队的规则与指南

帮助我们正确理解CMMI：它不是开发方法，而是建立组织级开发流程（指导每个项目组开发）



### Lv3组织级过程关注(OPF)
> **目的**: 基于对组织过程与过程资产当前的强项与弱项的透彻理解，计划、实施并部署组织级过程改进。
>
> **概要**
>
> - SG 1 确定过程改进机会
>     - SP 1.1 建立组织级过程需要 (当前使用的过程资产不能满足业务目标的时候需要做过程改进)
>     - SP 1.2 评估组织的过程 (对当前过程进行评估)
>     - SP 1.3 识别组织的过程改进 
> - SG 2 计划并实施过程行动 (如何改)
>     - SP 2.1 建立过程行动计划
>     - SP 2.2 实施过程行动计划 
> - SG 3 部署组织级过程资产并纳入经验 (改完如何用)
>     - SP 3.1 部署组织级过程资产 (比如规格约定了sonarqube能用，必须用，3.1就是部署sonarqube，让它真正能使用)
>     - SP 3.2 部署标准过程 (指导大家使用，QA确保sonarqube得到所有团队使用)
>     - SP 3.3 监督实施 (对于使用过程进行监控)
>     - SP 3.4 将经验纳入到组织级过程资产中

1. 这里的强项和弱项可以是直观的，但是高等级的不行，需要客观的

### Lv3组织级培训(OT)
> **目的**: 发展人员的技能与知识，使其能够有效且高效地执行他们的角色。
>
> **概要**
>
> - SG 1 建立组织级培训能力
>     - SP 1.1 建立战略培训需要
>     - SP 1.2 确定哪些培训需要属于组织的职责
>     - SP 1.3 建立组织级培训的战术计划
>     - SP 1.4 建立培训能力 
> - SG 2 提供培训
>     - SP 2.1 交付培训
>     - SP 2.2 建立培训记录
>     - SP 2.3 评估培训的有效性

### Lv4组织级过程性能(OPP)
> **目的**: 建立并维护对组织标准过程集中所选定过程性能的量化理解， 以支持达成质量与过程性能目标， 并提供过程性能数据、基线与模型， 以量化管理组织的项目。
>
> **概要**
>
> - SG 1 建立性能基线与模型
>     - SP 1.1 建立质量与过程性能目标
>     - SP 1.2 选择过程
>     - SP 1.3 建立过程性能度量项
>     - SP 1.4 分析过程性能并建立过程性能基线
>     - SP 1.5 建立过程性能模型

例如量化汽车性能：百米加速、制动距离、油耗。量化后方便比较。

例子：需求评审引入10个缺陷，系统测试解决2个缺陷，如果需求评审没有解决缺陷，那么最终会产生多少缺陷？不知道。如果需要计算，需要哪些数据（基线）？使用什么方法（模型)？

基线：上游获得哪些数据、模型-计算方法。蒙特卡罗法(Monte Carlo method)。

### Lv5组织级绩效管理(OPM)
> **目的**: 主动地管理组织的绩效以满足其业务目标。
>
> **概要**
>
> - SG 1 管理业务绩效
>     - SP 1.1 维护业务目标
>     - SP 1.2 分析过程性能数据
>     - SP 1.3 识别潜在改进领域 
> - SG 2 选择改进
>     - SP 2.1 挖掘所建议的改进
>     - SP 2.2 分析所建议的改进
>     - SP 2.3 确认改进
>     - SP 2.4 选择并实施将要部署的改进 
> - SG 3 部署改进
>     - SP 3.1 计划部署
>     - SP 3.2 管理部署
>     - SP 3.3 评价改进效果

1. 绩效performance：含义很多，比如质量水平、生产效率、周期时间

2. 其实和OPF一回事，所以我们通常说OPM是一个增强版本的OPF，体现在管理从定性到定量。

---

## 项目管理类

![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20210413094441.png)

![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20210413094504.png)

### Lv2项目监督与控制(PMC)
> **目的**: 提供对项目进展的了解，以便在项目绩效显著偏离计划时可采取适当的纠正措施。
>
> **概要**
> 
> - SG 1 对照计划监督项目
>     - SP 1.1 监督项目计划参数
>     - SP 1.2 监督承诺
>     - SP 1.3 监督项目风险
>     - SP 1.4 监督数据管理
>     - SP 1.5 监督干系人的参与
>     - SP 1.6 进行进展评审
>     - SP 1.7 进行里程碑评审 
> - SG 2 管理纠正措施直至关闭
>     - SP 2.1 分析问题
>     - SP 2.2 采取纠正措施
>     - SP 2.3 管理纠正措施

1. 项目监控点选择的原则？原因
```
A.重要的里程碑       
原因：项目阶段重要的完成标志，通过才能证明这一阶段任务完成，才能满足干系人的期望
B. 时间间隔比较合理  
原因：假如时间太长不能在合适的时期对偏差进行纠偏行动，会延误项目进展，时间太短不起作用，没法监控到项目的具体指标
```
2. SG2中的相关实践约定，需要采取纠偏措施的问题来源
```
来自于项目监控过程域，PPQA收集问题：项目监控、验证、确认；项目监控过程域中的问题列表管理
```

### Lv2项目计划(PP)
> **目的**: 建立并维护定义项目活动的计划。
>
> **概要**
>
> - SG 1 建立估算
>     - SP 1.1 估算项目范围
>     - SP 1.2 建立对工作产品与任务属性的估算
>     - SP 1.3 定义项目生命周期阶段
>     - SP 1.4 估算工作量与成本 
> - SG 2 制订项目计划
>     - SP 2.1 建立预算与进度
>     - SP 2.2 识别项目风险
>     - SP 2.3 计划数据管理
>     - SP 2.4 计划项目资源
>     - SP 2.5 计划所需的知识与技能
>     - SP 2.6 计划干系人的参与
>     - SP 2.7 建立项目计划 
> - SG 3 获得对计划的承诺
>     - SP 3.1 评审影响项目的各项计划
>     - SP 3.2 协调工作与资源水平
>     - SP 3.3 获得对计划的承诺

1. PP过程域在项目中的作用域   
```
项目启动阶段后开始，一直到验收阶段开始一段时间到管理收尾
```
2. 计划制定的原则？    
```
产品计划的制订是由上往下制订，由下往上修改的过程
```
3. 一般的估算方法有哪几个？区别
```
1)Delphi(德尔菲)估计，PERT Sizing 估算
2)区别：Delphi适用于项目资金多的时候，项目前期做估计(大项目)
PERT Sizing适用于时间短，资金少的时候，适用于后期比较明朗，紧迫的项目或项目中后期的重估计的时候(小项目)
两种方法比较：PERT Sizing估算花的时间短，资金用的少，精确度不高。Delphi成本高，时间长，精确度高。
```

4. 什么是承诺管理？承诺的分类
```   
承诺管理是对干系人承诺进行管理、保证，并兑现干系人的承诺。分为3类：结盟和协议、促进合作、允许变更
```

5. CMMI 在 SP1.1 估计项目范围中要求建立工作分解结构，必须包含哪些内容？
```
产品包、管理的任务、外包的、重用的、采购的组件
```

6. PP中“建立”和“维护”两个活动的解释？
```
建立：把项目文档写好并发布出去
维护：项目实施过程中，发现项目的进展和计划发生偏差的时候进行调整
```

7. 纠偏行动的先决条件
```
有偏离问题列表，在偏差界限达到15%或20% 时，进行纠正
```

### Lv2需求管理(REQM)
> **目的**: 管理项目的产品与产品组件需求，并确保那些需求与项目计划和工作产品间的协调一致。
>
> **概要**
>
> - SG 1 管理需求
>     - SP 1.1 理解需求
>     - SP 1.2 获得对需求的承诺
>     - SP 1.3 管理需求变更
>     - SP 1.4 维护需求的双向可追溯性
>     - SP 1.5 确保项目工作与需求间的协调一致

1. (需求跟踪的方法)  需求跟踪矩阵的使用
```
是需求跟踪矩阵的一个规程。在改写相关的产品的时候，相关的工作产品也要跟着去改。(比如:现在我在写代码，要去改设计文件，相关的产品设计文档和代码都需要修改。)
```
2. (获得需求承诺) 应该获得那些人的承诺
```
需求相关干系人:项目组内部:项目经理，需求分析师，设计人员，企业高层; 外部:供应商，客户
```
3. 识别需求不一致性的最有效方法
```
需求评审
```

4. 敏捷对于需求的态度是拥抱变更，但这是不正确的，大部分开发人员还是希望能够close开发

5. Scrum对于需求的态度是不响应一个sprint中的需求变更(目标不变)，只是记录到backlog，可能会在下一个迭代响应变更


### Lv2供方协议管理(SAM)
> **目的**: 管理从供方采购产品与服务的活动。
>
> **概要**
>
> - SG 1 建立供方协议
>     - SP 1.1 确定采购类型
>     - SP 1.2 选择供方
>     - SP 1.3 建立供方协议 
> - SG 2 履行供方协议
>     - SP 2.1 执行供方协议
>     - SP 2.2 接受采购的产品
>     - SP 2.3 确保产品移交

1. 确定组件获取方式的意义在于什么
```
在于获得最适合企业，选择能够满足质量、成本、进度三方面要求的最优产品列表
```
2. 建立供方协定---哪些协议是具有法力效力的
```
任务书，合作开发协议，合同
```
3. SP2、5为什么比CMM的SG2多了一个产品转化？产品转换的意义在于什么
```
(1)硬件和软件。硬件需要安装到项目环境，并且调试；软件、组件等需要集成到项目环境中去
(2)意义在于能够更好的和项目融合
```
4. 和供应商建立长期合作关系在哪里有约定？SP2、1意义是什么
```
对于组织来讲，项目是一次性的，但是合作是长久的，帮助供方改善过程实际上是对组织本身过程的改善
```
5. 跟踪选择的供方过程应该是怎样的
```
提供各种报告，根据报告评价供方产品如何，来评审。
```
6. 评价供方工作产品sp2.3中有哪些方式可以利用
```
演示产品、评审产品、进行组件的测试
```

### Lv3风险管理(RSKM)
> **目的**: 在项目潜在的问题发生前对其进行识别，以便在整个产品或项目生命期中，计划并在需要时启动风险的处理行动，从而降低这些潜在问题对达成目标产生的不利影响。
>
> **概要**
>
> - SG 1 准备风险管理
>     - SP 1.1 确定风险来源与类别
>     - SP 1.2 定义风险参数
>     - SP 1.3 建立风险管理策略 
> - SG 2 识别并分析风险
>     - SP 2.1 识别风险
>     - SP 2.2 评价、分类风险并划分风险优先级 
> - SG 3 缓解风险
>     - SP 3.1 制订风险缓解计划
>     - SP 3.2 实施风险缓解计划


### Lv3集成项目管理(IPM)
> **目的**: 从组织的**标准过程**集中**裁剪**得到集成的已定义过程，并以此为依据建立并管理项目以及相关干系人的参与。
>
> **概要**
>
> - SG 1 使用项目已定义的过程
>     - SP 1.1 建立项目已定义的过程
>     - SP 1.2 使用组织级过程资产计划项目活动
>     - SP 1.3 建立项目工作环境
>     - SP 1.4 集成各类计划
>     - SP 1.5 使用集成的计划管理项目
>     - SP 1.6 建立团队
>     - SP 1.7 为组织级过程资产做出贡献 
> - SG 2 与相关干系人协调并协作
>     - SP 2.1 管理干系人的参与
>     - SP 2.2 管理依赖
>     - SP 2.3 解决协调问题


### Lv4量化项目管理(QPM)
> **目的**: 量化地管理项目，以达成项目已建立的质量与过程性能目标。
>
> **概要**
>
> - SG 1 准备量化管理
>     - SP 1.1 建立项目的目标
>     - SP 1.2 组成已定义的过程
>     - SP 1.3 选择子过程与属性
>     - SP 1.4 选择度量项与分析技术 
> - SG 2 量化地管理项目
>     - SP 2.1 监督所选定子过程的性能
>     - SP 2.2 管理项目绩效
>     - SP 2.3 执行根本原因分析

1. OPP 和 QPM 的关联
```
QPM 确保了 OPP建立的基线能够被完成，QPM 的项目目标基于 OPP 中构建出的组织级的质量与过程性能，QPM可以根据项目的特点来对这些目标进行调整
```

2. QPM SP1.2 和之前过程定义的区别
```
Lv2 Lv3的过程域主要定义的是步骤，而 QPM 中需要用到一些统计的量化的手段来定义这个过程。这些手段用来告诉执行者需要做到什么程度。例如单元测试中代码覆盖率达到50%
```

3. x.y.z代表着什么
```
z通常用来表示整个项目的目标，比如最终上线的时候每一千行缺陷不超过一个
要做到z这个目标那么就需要把之前的上游的一些东西管控起来比如单元测试的质量，这就是y
但是单元测试是没办法管控的，所以依赖于更底层的x，例如对人员的技能有要求
```

---

## 工程类
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20210413094525.png)
### Lv3需求开发 (RD) 
> **目的**:
>
> **概要**
> 
> - SG 1 开发客户需求
>     - SP 1.1 挖掘需要
>     - SP 1.2 将干系人的需要转换为客户需求 
> - SG 2 开发产品需求
>     - SP 2.1 建立产品与产品组件需求
>     - SP 2.2 分配产品组件需求
>     - SP 2.3 识别接口需求 
> - SG 3 分析并确认需求
>     - SP 3.1 建立操作概念与场景
>     - SP 3.2 建立必需的功能与质量属性的定义
>     - SP 3.3 分析需求
>     - SP 3.4 分析需求以达到平衡
>     - SP 3.5 确认需求


### Lv3技术解决方案(TS)
> **目的**: 选择、设计并实现对需求的解决方案。解决方案、设计与实现包括单独的或以适当形式组合的产品、产品组件以及与产品相关的生命周期过程。
>
> **概要**
> 
> - SG 1 开发客户需求
>     - SP 1.1 挖掘需要
>     - SP 1.2 将干系人的需要转换为客户需求 
> - SG 2 开发产品需求
>     - SP 2.1 建立产品与产品组件需求
>     - SP 2.2 分配产品组件需求
>     - SP 2.3 识别接口需求 
> - SG 3 分析并确认需求
>     - SP 3.1 建立操作概念与场景
>     - SP 3.2 建立必需的功能与质量属性的定义
>     - SP 3.3 分析需求
>     - SP 3.4 分析需求以达到平衡
>     - SP 3.5 确认需求

### Lv3产品集成(PI)
> **目的**: 将产品组件装配成产品，确保产品作为一个整体正确地运行(即具有所要求的功能与质量属性)，并交付产品。
> 
> **概要**
> 
> - SG 1 准备产品集成
>     - SP 1.1 建立集成策略
>     - SP 1.2 建立产品集成环境
>     - SP 1.3 建立产品集成规程与准则 
> - SG 2 确保接口兼容性
>     - SP 2.1 评审接口描述的完整性
>     - SP 2.2 管理接口 
> - SG 3 装配产品组件并交付产品
>     - SP 3.1 确定需集成的产品组件准备就绪
>     - SP 3.2 装配产品组件
>     - SP 3.3 评价装配后的产品组件
>     - SP 3.4 打包并交付产品或产品组件

1. 假设你是产品集成的负责人，拒绝那些不合格的产品组件。定义哪些验收标准？
```
确保产品组件已经进入配置库里面
待集成的产品组件必须经过单元测试（部分集成测试），提供测试报告
完整的接口描述文档
和生命周期有关的过程证据（质量角度考虑）：评审报告、QA检查报告
```

2. 产品集成很容易被理解为集成测试，其实它管到交付

3. 最佳实践：在做集成之前，必须要做一个就绪检查

### Lv3确认(VAL)
> **目的**: 证明产品或产品组件被置于预期环境 中时满足其预期用途。
> 
> **概要**
> 
> - SG 1 准备确认
>     - SP 1.1 选择需要确认的产品
>     - SP 1.2 建立确认环境
>     - SP 1.3 建立确认规程与准则 
> - SG 2 确认产品或产品组件
>     - SP 2.1 执行确认
>     - SP 2.2 分析确认结果
 
1. 看解决方案是否真的帮客户解决问题
2. VAL 和 VER的关键区别
```
VER 选择的是工作产品，即过程中自然鹅产物，而 VAL 选择的是产品
```
### Lv3验证 (VER)
> **目的**: 确保选定的工作产品满足其规定的需求。
> 
> **概要**
> 
> - SG 1 准备验证
>     - SP 1.1 选择需要验证的工作产品
>     - SP 1.2 建立验证环境
>     - SP 1.3 建立验证规程与准则 
> - SG 2 执行同级评审
>     - SP 2.1 准备同级评审
>     - SP 2.2 进行同级评审
>     - SP 2.3 分析同级评审数据 
> - SG 3 验证选定的工作产品
>     - SP 3.1 执行验证
>     - SP 3.2 分析验证结果

1. 强调产品需求/解决方案实现了

---

## 支持类

![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20210413094548.png)

![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20210413094612.png)

### Lv2度量与分析(MA)
> **目的**: 开发并保持 用于支持管理信息需要的度量能力。
> 
> **概要**
> 
> - SG 1 使度量与分析活动协调一致
>     - SP 1.1 建立度量目标
>     - SP 1.2 明确说明度量项
>     - SP 1.3 明确说明数据收集与存储的规程
>     - SP 1.4 明确说明分析规程 
> - SG 2 提供度量结果
>     - SP 2.1 获得度量数据
>     - SP 2.2 分析度量数据
>     - SP 2.3 存储数据与结果
>     - SP 2.4 沟通结果

1. 度量分析的作用体现在哪些方面？(从项目和组织两个角度分析)
```
项目组：提供了信息，为管理者提供决策信息，(告诉管理者项目所处在什么阶段，将来应该进行相应的项目管理决策。)
组织：为组织及过程改进，提供决策信息。(要知道组织过程处于什么阶段，将来的改进方向)
```

2. 度量的目的要支持质量的目标
```
与产品质量有关：测试覆盖率、缺陷数量；一次性测试通过率；关键重要特性合格率；
与成本有关：开发成本、维护成本、管理成本、现场服务时间；
与产品交付有关：准时交付率；交付完整性、产品错发次数；延期交付率；一次准时交付率；
与客户有关：顾客满意率；客户投诉次数；处理投诉时间；
与人员及设备有关：员工满意率；设备利用率；设备完好率；设备故障率；培训效果；
```

3. 度量中用到的工具和方法
```
(挣值分析法(进度当前情况、成本当前情况)、80-20原则(找出问题的主要方面的时候用)、因果图(问题产生原因和问题解决方案)、控制图(控制数量级的范围的时候使用)、趋势图(对未来进行预测)、散点图(找出两个指标的关系。比如：1.时间与代码行数的关系，时间与缺陷个数的关系，2.程序员与代码行数的关系。这两个会采用散点图来分析)等 excel(数配置项的个数时用) project 等)
```

4. 如何满足度量的可追踪性(哪些工作产品可以满足)
```
用度量数据库，例如项目度量表
```

5. sp1.3要求确保在数据收集中收集正确的数据 如何保证？
```
由 scm负责收集，规定好收集数据源，由QA进行验证，进行完整性检查
```

6. 数据收集的自动化可以如何实现？
```
代码行度量自动化工具、单元测试自动化分析工具、日志采集系统、epm、专业测试管理工具、版本控制器
```

7. sp1.4通过什么文档来实现
```
度量数据分析方法指南、度量规格说明
```

8. 度量分析数据存储位置
```
存储在度量数据库(量化在文档中 
```

9. 估算目标：不是尽可能客观描述代码行/工作量（永远不可能实现估算），而是得到一个数字（数字对不对不重要，重要的是大家认可）

10. 先有愿景，再找数据

### Lv2配置管理(CM)
> **目的**: 使用配置识别、配置控制、配置状态记录与报告以及配置审计，来建立并维护工作产品的完整性。
> 
> **概要**
> 
> - SG 1 建立基线
>     - SP 1.1 识别配置项
>     - SP 1.2 建立配置管理系统
>     - SP 1.3 创建或发布基线 
> - SG 2 跟踪并控制变更
>     - SP 2.1 跟踪变更请求
>     - SP 2.2 控制配置项 
> - SG 3 建立完整性
>     - SP 3.1 建立配置管理记录
>     - SP 3.2 执行配置审计

1. 配置管理的四项主要工作
```
配置项标识、基线管理、状态发布、配置审核
```
2. 配置管理员的主要职责
```
制定配置管理计划；
识别配置项；
定义基线；
定义配置库结构；
管理、备份配置库；
控制变更；
生成配置管理状态报告；
对项目成员进行配置管理培训
```
3. CCB的职责
```
确保变更被分类以及被评估
评审和批准变更
解决关于变更请求的争议
做出关于变更的最终决策
决定需要实施的变更的优先级
确保只有被批准的变更得到实施
```
4. CCB的主要人员？性质
```
人员：项目经理，配置管理员，质量保证人员，开发人员代表，客户代表
性质：为了控制项目基线的变更进行审批授权的临时性质的组织。
```
5. 配置项标示的规则，什么情况下改写Vx.y.z中的x和y？什么说情况下改写z？规则是怎样的？
```
级别不同，修改不同。处于开发阶段只能改z，如果过了评审则由配置管理员改x，y。如果是比较小的变更处在一条基线上的话只改y，如果进行大规模的变更的话改x
```
6. 配置管理系统的等级？三个概念库如何体现配置库的等级
```
通过对不同库的配置项设置不同权限体现
三个概念库：开发库，基线库，产品库。
	开发库：由项目组内部人员进行控制，可以随意的根据自己的需要进行修改，不需要变更申请。
基线库：由项目的配置人员进行变更，要通过变更控制流程进行修改
产品库：由公司的配置管理员进行修改，发布的必须由公司的配置管理员进行发布。
```
7. 基线是什么? 基线下发布的产品有什么特点
```
(1)基线是一组配置项(CI)的集合：
(2)经过了正式的评审和批准
是进一步工作的基础
变更必须经过正式的变更控制程序
```
8. 配置库应该包括采购的组件
9. 配置库中只需要保存关键性版本不需要全部版本保存

10. 在概念上完整的应用系统交付包括：代码、用户手册、测试报告、设计报告、需求等。一个软件开发过程中会产生很多工作产品artifacts/work product，但是并不是所有产品都是值得管理的，要去掉一些不那么重要的产品，确保重要的（为了让交付有完整性的）工作产品被管理。其实就是为了减少工作量。

11. 测试驱动开发TDD可以显著提升质量？是因为原来单元测试做得太差！


### Lv2过程与产品质量保证(PPQA)
> **目的**: 向员工与管理层提供对过程及其相关工作产品的客观洞察。
>  
> **概要**
> 
> - SG 1 客观评价过程与工作产品
>     - SP 1.1 客观评价过程
>     - SP 1.2 客观评价工作产品 
> - SG 2 提供客观洞察
>     - SP 2.1 沟通并解决不符合问题
>     - SP 2.2 建立记录

1. 软件项目质量的分类
```
内部、外部、使用质量，过程和产品，但绝不是绝对的过程和绝对的产品，过程质量影响产品质量，产品质量取决于过程质量，互相影响。
```
2. QA行使的角色
```
三类：警察、医生和老师 简要说明QA工作在项目全过程的三种角色体现
  老师的角色在项目前期，QA辅助项目经理制定项目计划，包括根据质量体系中的标准过程裁剪得到项目定义的过程，帮助项目进行估算，设定质量目标等；对项目成员进行过程和规范的培训以及在过程中进行指导等。
警察的角色在项目过程中，QA有选择性地参加项目的技术评审，定期对项目的工作产品和过程进行审计和评审。
医生的角色在项目过程中，QA也可以承担收集、统计、分析度量数据的工作，用于支持管理决策。
```
3. PPQA 过程的目标？
```
目标：保证过程，保证产品质量，为管理层和员工提供关于过程和相关工作产品的客观情况。
```
4. 解释 PPQA QA SQA NC QC
``` 
PPQA：产品过程质量保证过程域
QA：质量保证专员，质量保证学科
SQA：软件的质量保证专员，软件质量保证
NC：不符合项
QC：质量控制
```

5. QA和QC差别？
```
QA 是质量保证，QC是质量控制 
质量控制是质量保证的重要手段，质量控制是质量保证的一个部分，但是质量控制是发现问题的时候要去纠正的重要手段。
```

6. 执行ppqa的工具方法(评审，审计一般过程要知道，图要会画)
```
评审、审计、checklist、因果图、饼图
```

7. 简述评审一般过程、审计一般过程
``` 
(1)评审一般过程：
1.前期准备：提前发资料，提前预审并提出问题!
2.执行评审，怎么执行：采用检查单,不迟到，要签到。跑题不要太远
3.评审过程怎么进行：进行度量、统计效率
4.评审结束：记录表现
(2)执行过程审计一般过程
准备：选PA，检查单，计划，评审
执行：审计，初步沟通，建议
评审和审计活动以检查工作产品和访谈作为主要工作来源，估算过程，进行访谈，访谈步骤，检查文档结果
后期：最终报告，跟踪NC，提供建议
```
8. QA人员以及ppqa过程的质量保证如何实现
```
QA要形成质量记录，由QA的经理来进行审查
PPQA过程也要形成记录
```

9. 产品和工作产品的区别
```
产品是最终需要被交付给用户的，而工作产品不一定被交付给用户
```
    

### Lv3决策分析与解决(DAR)
> **目的**: 使用正式的评价过程，遵循已建立的准则，对已识别的多个备选方案进行评价，以分析可能的决策。
>  
> **概要**
> 
> - SG 1 评价备选方案
>     - SP 1.1 建立决策分析指南
>     - SP 1.2 建立评价准则
>     - SP 1.3 识别备选解决方案
>     - SP 1.4 选择评价方法
>     - SP 1.5 评价备选解决方案
>     - SP 1.6 选择解决方案

### Lv5原因分析与解决(CAR)
> **目的**: 识别所选结果的原因并采取行动，以改进过程性能。
>  
> **概要**
> 
> - SG 1 确定所选结果的原因
>     - SP 1.1 选择需要加以分析的结果
>     - SP 1.2 分析原因 
> - SG 2 处理所选结果的原因
>     - SP 2.1 实施行动提议
>     - SP 2.2 评价已实施行动的效果
>     - SP 2.3 记录原因分析的数据

1. CAR 在本质上做的是什么
```
当有问题出现的时候找到问题的根本原因，在后续的CMMI版本中其实在1级2级也是可以进行 CAR 的
```

2. CAR 一定是选坏的吗
```
CAR 也可以选择好的实践进行总结，将这些经验在组织内部进行传递
```

3. CAR 实际上是依赖于 OPM 进行执行的

4. CAR 的理念是不犯错比犯了错再改正更好

5. CAR 在4级和5级的不同
```
4级主要排除因为特殊原因引起的问题，5级排除真正普适的根因
```

---

# PPT 中问题整理
1. Requirements Management
```
Which of the following examples of requirements traceability are adequate?

1. Customer requirements to system requirements and vice versa, but no other traceability

2. System requirements to software and hardware requirements and vice versa, but no other traceability

3. Software and hardware requirements to design components and test cases and vice versa, but no other traceability
```

> 此处系统需求等同于产品需求，软、硬件需求等同于产品组件需求。
> 和项目的上下文、粒度综合起来看，没有标准答案

2. Project Planing
```
PASS is planning their resources. What project resources should be included?

• Tools
• Budget and funding
• Staff
• Project plans
• Facilities
```

> 项目计划不是资源，其余都是。因为资源需要被安排到计划中

3. Project Management and Control
```
Project Problems
1) People are not showing up at peer review meetings.
2) Actual costs continually exceed planned costs.
3) People are delinquent on their action items.
4) Management does not know PASS status.
5) People are not meeting schedules.

PMC SPs
a) SP 1.1 Monitor Project Planning Parameters
b) SP 1.2 Monitor Commitments
c) SP 1.5 Monitor Stakeholder Involvement
d) SP 1.6 Conduct Progress Reviews
e) SP 2.3 Manage Corrective Action
```

> 1-c 2-a 3-e 4-d 5-b

4. Risk Management
```
1. PASS identified risks associated with their suppliers.
2. Risks were grouped by likelihood of occurrence and impact.
3. PASS identified risks associated with innovative technology.
4. Impact can be high, medium, or low.
5. At the risk management meeting, the status of some risks were changed to retired, mitigated, or closed.

a) Risk source
b) Risk category
c) Risk parameter
```

> 13-a 2-b 45-c

5. Supplier Agreement Management
```
PASS uses a supplier for motion sensors. Match PASS sample activities to SAM SPs.

Sample Activities
1) PASS wrote a contract with DetectEx.
2) Supplier motion sensors were sent to integration and testing.
3) A trade study conducted by PASS selected DetectEx for motion sensors.
4) The motion sensors passed acceptance criteria.
5) COTS were used for the keypad; sensors were secured from suppliers; and the controller consists of re-used PASS in-house software.

SAM SPs
a) SP 1.1 Determine Acquisition Type
b) SP 1.2 Select Suppliers
c) SP 1.3 Establish Supplier Agreements
d) SP 2.2 Accept the Acquired Product
e) SP 2.3 Ensure Transition of Products
```

> 1-c 2-e 3-b 4-d 5-a

6. Configuration Management
```
Which CM SPs could have prevented the problem?

PASS delivered updated software to SaveAll. SaveAll wanted to know what changed, but PASS wasn’t sure because change request records were incomplete.

1. SP 1.1 Identify Configuration Items
2. SP 1.2 Establish a Configuration Management System
3. SP 1.3 Create or Release Baselines
4. SP 2.1 Track Change Requests
5. SP 2.2 Control Configuration Items
6. SP 3.1 Establish Configuration Management Records
7. SP 3.2 Perform Configuration Audits
```

> 全都是

7. Process and Product Quality Assurance
```
Which are process evaluations? Which are product evaluations?
1. QA attends a peer review and mentions there should be an attendance sheet.
2. QA watches the engineers assemble a security system and notices a component was put in the wrong place.
3. QA reviews the requirements and notices a missing requirement.
4. QA reviews the design and notices some engineering drawings are missing.
5. QA notices that the test group does not always fill out problem reports.
```

> 正确答案是1，2，3，4，5，过程和产品都是有可能的 

8. Verification
```
Which of the following are adequate for verification procedures and criteria?

1. Peer review criteria that says, “Ensure products are complete, consistent, and correct.”
2. Checklists for peer reviews
3. A test procedure that lists test steps and how to judge whether each test step passed or failed
4. A procedure on how to do the verification process
5. A procedure on how to do peer reviews
```

> 没有一个标准答案，主要是依据项目的情况来看的。例如第二点，对一个大的项目，有很多专家来进行评审，一个检查表反而可能产生疏漏

9. Validation
```
Which are verification and which are validation?

1. PASS conducts a formal design review with SaveAll.
2. PASS has a peer review with the systems engineers, software engineers, and QA.
3. PASS demonstrates a prototype to SaveAll to get their feedback.
4. PASS formally tests the product prior to delivery with both SaveAll and QA witnessing the test.
5. PASS integrates the components and tests the system.
```

> 都有可能。5在大多数情况下是VER，如果考虑环境因素VAL

10. Organizational Process Focus
```
Which of the following show incorporating experiences?

1. PASS Process Group (PG) updates a policy based on feedback from projects at a monthly meeting.
2. PASS PG notices a process step was poorly written and corrects it.
3. PASS PG looks at how projects are using the templates and updates the templates.
4. PASS PG improves the standard processes after analyzing appraisal metrics.
5. PASS PG updates a process because of information found on the internet.
```

> 属于：1 3 4
> 
> 不属于：2 5
>
> 2：如果是因为项目团队用了觉得写的不清晰：属于。大部分情况：不属于
> 
> 3：根据别人使用的结果做修正、更新

11. Integrated Project Management
```
Which PASS scenarios align with IPM?

1. All PASS projects follow the standard process exactly as is.
2. Projects can use their own processes and trace them to the PASS standard process.
3. PASS provides a standard process and rules for tailoring.
4. Once projects tailor the PASS standard process, it is called the projects’ standard process.
5. If the customer says eliminate QA, but the standard process requires QA with no tailoring, it’s okay for PASS projects to tailor out QA to satisfy the customer.
```

> 234
> 
> 1 是可以定制化的
> 
> 5 某个SP中规定必须要有QA，所以QA必须有

12. Organizational Process Definition
```
Match sample artifacts with OPD SPs.

Sample Artifacts

1) Instructions for when a process step can be deleted or modified
2) Website for tools, templates, project examples, etc.
3) Standard software that comes with all company computers
4) Spiral lifecycle description
5) Requirements process

OPD SPs

a) SP 1.1 Establish Standard Processes
b) SP 1.2 Establish Lifecycle Model Descriptions
c) SP 1.3 Establish Tailoring Criteria and Guidelines
d) SP 1.5 Establish the Organization’s Process Assets Library
e) SP 1.6 Establish Work Environment Standards
```

> 1-c 2-d 3-e 4-b 5-a

13. Organizational Training
```
Match sample artifacts with OT SPs.

Sample Artifacts

1) Training classrooms
2) Plan for 3-5 years in the future
3) Analysis of course evaluations
4) Plan that states PASS, not projects, will provide risk tool training
5) Plan for the next year

OT SPs

a) SP 1.1 Establish Strategic Training Needs
b) SP 1.2 Determine Which Training Needs are the Responsibility of the Organization
c) SP 1.3 Establish an Organizational Training Tactical Plan
d) SP 1.4 Establish a Training Capability
e) SP 2.3 Assess Training Effectiveness
```

> 1-d 2-a 3-e 4-b 5-c

14. 
```
量化的过程性能目标包括了质量，然而，为强调质量在CMMI产品套件中的重要性，在CMMI中使用“质量与过程性能目标”一词。在哪个地方也出现了其实不是并列关系，实际上是包含关系，仅仅是因为比较重要，所以拿出来说的情况
```

> VER SG2 SG3：SG3包含SG2
> 
> VER 中同行评审只是VER的一种手段，应该和VER平级，但是太过重要所以放到了标准流程里面