#set page(
  paper: "us-letter",
  margin: (x: 0.65in, y: 0.58in),
)

#set text(
  font: "Arial",
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
  #text(size: 19pt, weight: "bold", fill: dark)[Qingsen Zhang]
  #v(0.25em)

  #text(size: 9.2pt)[
    Binghamton, NY
    #h(0.35em) · #h(0.35em)
    +1 (302) 763-6786
    #h(0.35em) · #h(0.35em)
    #link("mailto:qzhang11@binghamton.edu")[qzhang11\@binghamton.edu]
    #h(0.35em) · #h(0.35em)
    #link("https://zhangqingsen.github.io/")[GitHub]
    #h(0.35em) · #h(0.35em)
    #link("https://scholar.google.com/citations?user=56R5dLkAAAAJ&hl=en")[
      Google Scholar
    ]
  ]
]

#section[RESEARCH EXPERIENCE]

#entry(
  "Ph.D. Candidate, Computer Science",
  "Binghamton University",
  "Binghamton, NY",
  "Aug. 2024 – Present",
)

#text(size: 8.7pt, fill: muted)[Advisor: Prof. Yincheng Jin]
#v(0.28em)

#project(
  "Wearable 3D Face Reconstruction",
  "Doctoral Research Project",
)

#bullet[
  *Data collection:* Designed and operated a dual-rim wearable capture system;
  collected and processed more than 700K synchronized frame pairs from 17 Deaf
  ASL signers and generated template-aligned 3D supervision from frontal
  reference videos.
]

#bullet[
  *Pipeline design:* Developed an end-to-end rim-to-canonical reconstruction
  pipeline that maps fragmented near-field dual views to complete,
  template-aligned 3D face meshes using multi-scale view conditioning and
  rectified flow in UV displacement space.
]

#bullet[
  *Training and evaluation:* Implemented and trained the models in PyTorch,
  reproduced and adapted comparison methods, and evaluated surface and facial
  landmark reconstruction on participant-disjoint data splits.
]

#v(0.22em)

#project(
  "Egocentric Stereo ASL Hand Dataset",
  "Dataset Curation and Annotation Quality Assurance",
)

#bullet[
  Contributed to collecting and organizing head-mounted stereo recordings from
  25 Deaf native ASL signers; took a primary role in processing, reviewing, and
  quality-checking linguistic and 3D hand-pose annotations for continuous
  signing data.
]

#section[INDUSTRY EXPERIENCE]

#entry(
  "Machine Vision Engineer",
  "Wuxi Lead Intelligent Equipment Co., Ltd.",
  "Wuxi, China",
  "2021",
)

#bullet[
  *Vision system development:* Developed C++ machine-vision software with OpenCV
  for engineer-to-order lithium-ion battery manufacturing equipment, including
  dimensional measurement, surface-defect inspection, electrode-tab positioning,
  and geometric calibration. Adapted the software across machine configurations
  and maintained HALCON-based systems where applicable.
]

#bullet[
  *On-site commissioning:* Spent approximately three months at customer
  manufacturing sites commissioning equipment, calibrating and tuning vision
  systems, diagnosing production issues, and modifying software as requirements
  emerged during staged delivery.
]

#entry(
  "Lecturer, School of Blockchain",
  "Jiangxi University of Software Professional Technology",
  "Nanchang, China",
  "2022",
)

#bullet[
  Designed and taught introductory Python and blockchain courses to approximately
  300 undergraduate students across six classes.
]

#bullet[
  Organized competition preparation and advised student teams on foundational
  computing skills and applied data-analysis challenges.
]

#section[EDUCATION]

#entry(
  "Ph.D. Candidate in Computer Science",
  "Binghamton University",
  "Binghamton, NY",
  "Aug. 2024 – May 2030 (expected)",
)

#entry(
  "Master of Engineering in Computer Science",
  "Virginia Tech",
  "Falls Church, VA",
  "Aug. 2023 – May 2024",
)

#entry(
  "M.S. in Computer Science",
  "University of Delaware",
  "Newark, DE",
  "Sep. 2019 – Dec. 2020",
)

#entry(
  "B.S. in Computer Science",
  "University of Delaware",
  "Newark, DE",
  "Sep. 2016 – Aug. 2019",
)

#section[PUBLICATIONS]

#bullet[
  Y. Cai, Z. Li, T. Lu, Y. Zhu, Y.-S. Wu, *Q. Zhang*, X. Xu, Z. Jin,
  M. Gowda, and Y. Jin. “Toward Scalable ASL Education: Egocentric Stereo
  Sensing with LLM Feedback for Error-Aware Learning.”
  #emph[Proceedings of the CHI Conference on Human Factors in Computing Systems],2026.
]

#bullet[
  *Q. Zhang*. “Attendance System Based on Blockchain and Face Recognition.”
  #emph[2022 International Conference on Smart Applications, Communications
  and Networking (SmartNets)], 2022.
]

#section[TECHNICAL SKILLS]

*Programming and Tools:* Python, C++, PyTorch, PyTorch3D, CUDA, OpenCV,
HALCON, Linux, Git, Docker
