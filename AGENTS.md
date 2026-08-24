# AGENTS.md

> 给 AI 协作者的快速说明（"README for AI agents"）。当前状态与详细决策见本地 `_meta/`（私有，不入库）。
> 最后更新：2026-08-23

## 这是什么

Qingsen Zhang 的求职导向个人主页（GitHub Pages 静态站，`https://zhangqingsen.github.io`）。
- 定位卖点：**工业机器视觉落地（C++/OpenCV/现场调试）+ 3D CV 研究** 的结合。
- `blog/` 是个人随笔 / 技术笔记存档，**必须保留，不可删除**。

## 环境（Windows + PowerShell）

- 仓库根目录：`C:\Users\14637\Desktop\shortcuts\ZhangQingsen.github.io`
- git remote：HTTPS（凭据走 Git Credential Manager，无需 SSH 密钥）
- Quarto 1.10.18 全局安装：`C:\Program Files\Quarto\bin\quarto.exe`（自带 Pandoc/Deno/Typst）
- 注意：后台/新会话继承宿主机旧环境快照，PATH 可能不含新 Quarto 路径；脚本一律用全路径调用（已处理）
- **裸 Python（Python 3.12）禁止全局 pip install**。渲染带 Python 代码的 .qmd 必须用 venv：
  **一个 blog 一个 venv，render 完即删**；纯 Markdown 文档不需要 venv。
- 每个 blog 目录保留 `requirements.txt`；渲染脚本 `blog/render-series.ps1`（自动建 venv → 装依赖 → **激活 venv** → render → 删 venv），长任务用 `blog/render-bg.ps1` 后台跑 + 轮询日志 `blog/<系列>-render.log`。
- blog 渲染用 `embed-resources: true`：每篇 = 单文件自包含 HTML（无 `_files/` 目录），图片内嵌。

## 文件约定（重要）

- 所有 HTML 文件为 **CRLF + BOM**：用 edit_file 修改时必须带 `\r\n`，否则匹配失败。
- 站点语言：英文为主；中文仅用于中文简历/个别页面。
- blog 只保留现有内容：不恢复 git 历史旧帖；intro-to-python 为 notebook 导出 HTML，保持现状。
- `_meta/` 已 gitignore（含求职敏感信息），**绝不提交/推送**。
- 每次重要变更后更新 `_meta/STATUS.md`。

## 常用命令

- 本地预览：在仓库根目录 `python -m http.server 8000` → http://localhost:8000
- 提交推送：`git add -A; git commit -m "..."; git push`
- 渲染博客系列：`\blog\render-series.ps1 <系列名>`（如 cs5805-fall-2023 / hhl-qiskit）

## 目录结构

```
├── index.html         # 首页：About / Currently / Selected Work / Publications
├── styles.css         # 全站样式（单一文件）
├── work/index.html    # 项目详情（face-reconstruction / industrial-vision / asl-dataset）
├── cv/                # CV 页 + PDF（EN/CN）+ .typ 源文件
├── blog/              # 博客索引（fetch posts.json 渲染列表）
│   ├── posts.json     # 元数据（title/date/meta/description/url）
│   ├── quantum-computing/  # CS 580Q TA 材料
│   ├── cs5805-fall-2023/   # ML 课程实验（.qmd 源文件已恢复 + 主题化重渲染）
│   ├── hhl-qiskit/         # HHL 算法实现（.qmd 源文件已恢复 + 主题化重渲染）
│   └── intro-to-python/    # Python 教学材料
├── assets/images/avatar.png
├── AGENTS.md          # 本文件
└── _meta/             # 本地私有（gitignored）
```
