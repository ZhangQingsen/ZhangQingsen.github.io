#set page(
  paper: "a4",
  margin: (x: 0.65in, y: 0.58in),
)

#set text(
  font: ("Microsoft YaHei", "Arial"),
  size: 10pt,
)

#set par(
  leading: 0.55em,
  spacing: 0.28em,
)

#let dark = rgb("#202020")
#let muted = rgb("#5b5b5b")

#let section(title) = [
  #v(0.9em)
  #text(size: 10.5pt, weight: "bold", fill: dark)[#title]
  #v(0.18em)
  #line(length: 100%, stroke: 0.65pt + dark)
  #v(0.34em)
]

#let entry(role, organization, location, dates) = [
  #grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    [
      #text(weight: "bold")[#role]
      #h(0.4em)
      #organization
    ],
    [#text(weight: "medium")[#dates]],
  )
  #text(size: 8.7pt, fill: muted)[#location]
  #v(0.2em)
]

#let project(title, subtitle) = [
  #text(weight: "bold")[#title]
  #h(0.35em)
  #text(size: 8.8pt, fill: muted)[#subtitle]
  #v(0.18em)
]

#let bullet(body) = [
  #grid(
    columns: (0.14in, 1fr),
    column-gutter: 0.03in,
    [•],
    [#body],
  )
  #v(0.16em)
]

#align(center)[
  #text(size: 19pt, weight: "bold", fill: dark)[张晴森]
  #v(0.25em)

  #text(size: 9.2pt)[
    宾汉姆顿，纽约州
    #h(0.35em) · #h(0.35em)
    +1 (302) 763-6786
    #h(0.35em) · #h(0.35em)
    #link("mailto:qzhang11@binghamton.edu")[qzhang11\@binghamton.edu]
    #h(0.35em) · #h(0.35em)
    #link("https://zhangqingsen.github.io/")[GitHub]
    #h(0.35em) · #h(0.35em)
    #link("https://scholar.google.com/citations?user=56R5dLkAAAAJ&hl=en")[Google Scholar]
  ]
]

#section[科研经历]

#entry(
  "计算机科学博士候选人",
  "宾汉姆顿大学",
  "纽约州宾汉姆顿",
  "2024年8月 – 至今",
)

#text(size: 8.7pt, fill: muted)[导师：Yincheng Jin 副教授]
#v(0.28em)

#project(
  "可穿戴设备下的三维人脸重建",
  "博士研究项目",
)

#bullet[
  设计并操作双摄像头可穿戴采集系统，采集并处理来自17名聋人ASL使用者的70万余组同步视频帧，并基于正面参考视频生成与模板对齐的三维监督数据。
]

#bullet[
  设计从近场双视角图像到完整三维人脸网格的端到端重建流程，使用多尺度视角条件信息，以及基于整流流的UV位移空间生成方法。
]

#bullet[
  使用PyTorch实现并训练模型，复现和改造对比方法，并在按参与者划分的数据集上评估三维表面与人脸关键点重建效果。
]

#v(0.22em)

#project(
  "第一视角立体视觉 ASL 手部数据集",
  "数据集整理、标注与质量控制",
)

#bullet[
  参与采集并整理来自25名聋人ASL使用者的头戴式立体视频；主要负责连续手语数据的处理、标注审查以及质量控制工作。
]

#section[工业经历]

#entry(
  "机器视觉工程师",
  "无锡先导智能装备股份有限公司",
  "中国无锡",
  "2021年",
)

#bullet[
  使用C++与OpenCV为锂离子电池制造设备开发机器视觉软件，包括尺寸测量、表面缺陷检测、极耳定位和视觉几何校正；根据不同机型和客户需求适配软件，并维护部分基于HALCON的视觉系统。
]

#bullet[
  在客户生产现场参与设备分阶段交付、系统初始化与现场调试，负责视觉系统的标定和参数调整，诊断生产问题，并根据实际需求修改软件。
]

#entry(
  "现场技术支持工程师",
  "北京极智简单科技有限公司",
  "中国/美国，按项目出差",
  "2023年 – 至今",
)

#bullet[
  为面向海外市场的智能冷链设备提供按需部署与现场调试支持，参与设备初始化、系统部署和客户现场交付。
]

#bullet[
  诊断并协助解决设备运行中的硬件模块、通信连接和智能化程序问题；针对无法独立解决的问题，与国内工程团队协作完成定位、修复和后续调整。
]

#bullet[
  根据客户现场使用情况持续跟进设备运行状态，参与系统调试、问题复现、参数调整和客户技术支持。
]


#entry(
  "讲师，区块链学院",
  "江西软件职业技术大学",
  "中国南昌",
  "2022年",
)

#bullet[
  面向六个本科班级、约300名学生设计并讲授Python与区块链入门课程。
]

#bullet[
  组织竞赛备赛，并指导学生团队参加计算机基础技能和应用数据分析类竞赛。
]

#section[教育经历]

#entry(
  "计算机科学博士候选人",
  "宾汉姆顿大学",
  "纽约州宾汉姆顿",
  "预计2024年8月 – 2030年5月",
)

#entry(
  "计算机科学工程硕士",
  "弗吉尼亚理工大学",
  "弗吉尼亚州Falls Church",
  "2023年8月 – 2024年5月",
)

#entry(
  "计算机科学硕士",
  "特拉华大学",
  "特拉华州纽瓦克",
  "2019年9月 – 2020年12月",
)

#entry(
  "计算机科学学士",
  "特拉华大学",
  "特拉华州纽瓦克",
  "2016年9月 – 2019年8月",
)

#section[论文发表]

#bullet[
  Y. Cai, Z. Li, T. Lu, Y. Zhu, Y.-S. Wu, #emph[Q. Zhang], X. Xu, Z. Jin, M. Gowda, and Y. Jin. “Toward Scalable ASL Education: Egocentric Stereo Sensing with LLM Feedback for Error-Aware Learning.” #emph[Proceedings of the CHI Conference on Human Factors in Computing Systems], 2026.
]

#bullet[
  #emph[Q. Zhang]. “Attendance System Based on Blockchain and Face Recognition.” #emph[2022 International Conference on Smart Applications, Communications and Networking (SmartNets)], 2022.
]

#section[技术技能]

*编程与工具：* Python、C++、PyTorch、PyTorch3D、CUDA、OpenCV、HALCON、Linux、Git、Docker
