<div align="center">

# CHENT WIKI

**基于 MkDocs Material 的个人技术知识库。**<br>
*A MkDocs Material knowledge base for engineering notes and practice.*

[![GitHub](https://img.shields.io/badge/GitHub-kerntau%2Fwiki-181717?style=for-the-badge&logo=github)](https://github.com/kerntau/wiki)
[![MkDocs](https://img.shields.io/badge/MkDocs-1.6-526CFE?style=for-the-badge)](https://www.mkdocs.org)
[![Material](https://img.shields.io/badge/Material_for_MkDocs-9.7-526CFE?style=for-the-badge)](https://squidfunk.github.io/mkdocs-material/)
[![Python](https://img.shields.io/badge/Python-3.10%2B-3776AB?style=for-the-badge&logo=python&logoColor=ffffff)](https://www.python.org)

</div>

---

## 01. PROJECT PURPOSE // 项目定位

Chent Wiki 用 Markdown 记录前端、后端、云原生、数据库、人工智能和网络安全主题。站点由 MkDocs Material 生成静态文件，overrides/ 提供视觉和模板定制。

## 02. TECHNICAL ARCHITECTURE // 技术架构

~~~mermaid
graph LR
    A[docs Markdown] --> B[MkDocs Material]
    C[overrides templates and assets] --> B
    D[mkdocs.yml] --> B
    B --> E[site static output]
    E --> F[Vercel or static hosting]
~~~

- docs/ 是知识库原稿和资源的唯一内容层。
- mkdocs.yml 定义导航、主题、插件和站点元数据。
- requirements.txt 固定 Python 构建依赖；vercel.json 指向 site/。

## 03. TECHNICAL MATRIX // 技术矩阵

| 模块 | 实现 | 说明 |
| --- | --- | --- |
| 文档引擎 | MkDocs | 将 Markdown 编译为静态 HTML |
| 主题 | Material for MkDocs | 导航、搜索、代码和响应式 UI |
| 定制 | overrides/ | 自定义模板、CSS 和脚本 |
| 依赖 | requirements.txt | MkDocs、主题和压缩插件 |
| 发布 | Vercel / 静态托管 | 构建目录为 site/ |

## 04. REPOSITORY TOPOLOGY // 源码工程拓扑

~~~text
.
├── docs/                    # Markdown 原稿与资源
│   ├── assets/              # 图片、字体和其他媒体
│   ├── posts/               # 技术专栏内容
│   └── index.md             # 知识库首页
├── overrides/               # Material 模板和前端资源
├── mkdocs.yml               # 站点配置与导航
├── requirements.txt         # Python 依赖
├── vercel.json              # 构建与输出配置
├── start_wiki.bat           # Windows 开发启动
└── build_wiki.bat           # Windows 构建脚本
~~~

## 05. CLONE & QUICK START // 极速装配指南

环境要求：Python 3.10+。

~~~bash
git clone https://github.com/kerntau/wiki.git
cd wiki
python -m venv .venv
# Windows PowerShell: .\.venv\Scripts\Activate.ps1
# macOS/Linux: source .venv/bin/activate
python -m pip install -r requirements.txt
mkdocs serve -a 127.0.0.1:8000
~~~

## 06. DEPLOYMENT & VERIFICATION // 部署与验证

~~~bash
python -m mkdocs build --strict
~~~

构建产物位于 site/。部署到 Vercel 时使用 mkdocs build，输出目录 site/；提交前检查导航、站内链接、代码块和自定义 overrides 是否通过严格构建。

## 07. LICENSE // 许可证

仓库包含 LICENSE 文件。MkDocs Material 与其他依赖遵循各自许可证，修改或分发时请同时遵守。
