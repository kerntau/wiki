# Chent Wiki

> **Chent 的个人知识库，记录和整理技术文档、学习笔记、项目资料、实用教程以及个人实践经验，持续沉淀值得长期保存的知识与内容。**

- **核心架构**：基于 MkDocs + Material for MkDocs 深度定制

---

## 📚 知识库内容

知识库收录了 50 篇深度技术实战长文与架构设计解析，划分为 6 大核心技术专栏：

| 专栏名称 | 收录篇数 | 核心内容方向 |
| :--- | :--- | :--- |
| **前端开发** | 16 篇 | React 19、SolidJS 响应式、Tailwind v4、WebAssembly、WebRTC 音视频、V8 引擎 GC 等 |
| **后端开发** | 15 篇 | Rust 所有权并发、Actix/Axum 实测、Go GMP 调度器、Kafka 零拷贝、Raft 算法、gRPC 等 |
| **云原生与运维** | 9 篇 | Kubernetes 容器编排、Istio 服务网格、Linux eBPF 安全、GitOps、Serverless 冷启动物理机理等 |
| **数据库系统** | 4 篇 | ClickHouse 千万级实时分析、ShardingSphere 分库分表、PostgreSQL 死锁调优、MongoDB 集群 |
| **人工智能** | 3 篇 | LLM Agent 架构设计与 LangChain 实战、Elasticsearch 向量检索 RAG、PyTorch 2 动态图编译 |
| **网络安全** | 3 篇 | Web 安全纵深防御（SQLi / XSS）、OAuth 2.1 与 PKCE 实战、跨云零信任网络架构 |

---

## 🚀 Vercel 自动化部署指南

本项目已配置纯净的静态构建流水线（`vercel.json` + `requirements.txt`），推送至 GitHub 后可实现零配置一键自动化部署。

### 部署步骤

1. **导入仓库**：
   - 登录 [Vercel 控制台](https://vercel.com/)，点击 **Add New...** -> **Project**；
   - 选择本知识库的 GitHub 仓库并点击 **Import**。

2. **构建与输出配置（Build & Output Settings）**：
   - **Framework Preset**：选择 `Other`
   - **Build Command**：
     ```bash
     mkdocs build
     ```
   - **Output Directory**：
     ```text
     site
     ```
   *(注：根目录已内置 `vercel.json`，Vercel 将自动读取上述构建与输出目录参数)*

3. **点击 Deploy**：
   - 等待 Vercel 执行依赖安装与编译，通常耗时约 20~30 秒即可全站部署上线。

4. **绑定自定义独立域名（可选）**：
   - 部署完成后，进入项目 **Settings** -> **Domains**；
   - 输入你自己的域名并点击 **Add**；
   - 在您的 DNS 解析服务商处（如 Cloudflare / 阿里云 / 腾讯云）添加 CNAME 记录：
     - **主机记录**：`wiki`
     - **记录类型**：`CNAME`
     - **记录值**：`cname.vercel-dns.com`
   - 按域名服务商提示添加 DNS 记录，等待 SSL 证书签发完成后访问。

---

## 🛠️ 本地开发与编译

需要 Python 3.10+。首次使用时创建虚拟环境并安装 MkDocs 依赖：

```bash
python -m venv .venv
# Windows PowerShell
.\.venv\Scripts\Activate.ps1
# macOS / Linux
# source .venv/bin/activate
python -m pip install -r requirements.txt
```

启动本地热重载服务：

```bash
mkdocs serve -a 127.0.0.1:8000
```

生成生产静态文件：

```bash
python -m mkdocs build --strict
```

构建输出位于 `site/`；`site/` 是生成物，不应手工编辑。Windows 用户也可以使用 `start_wiki.bat` 或 `build_wiki.bat`。

## 💻 本地开发与编译

### 快速启动（Windows）
双击根目录脚本即可启动实时热重载服务并自动在浏览器打开：
```bash
.\start_wiki.bat
```
访问地址：`http://127.0.0.1:8000/wiki/`

### 生产构建（Windows / Linux / macOS）
```bash
# 激活虚拟环境后执行全站静态生成
python -m mkdocs build
```
编译产物将全量输出至根目录 `site/`。

---

## 📂 项目架构

```text
WIKI/
├── docs/                      # 知识库 Markdown 原稿与媒体资产
│   ├── assets/                # 全套高清 Favicon、封面图片与资源
│   ├── posts/                 # 6 大技术专栏（50 篇深度长文）
│   └── index.md               # 知识库首页
├── overrides/                 # 现代化 UI 覆盖模板与样式
│   ├── assets/                # 编译优化后的自定义 CSS / JS
│   ├── partials/              # 居中纤薄版权底栏模板
│   └── main.html              # 页面入口增强（单行公告横幅、缓存穿透图标）
├── mkdocs.yml                 # MkDocs 全局站点配置
├── requirements.txt           # Vercel 与生产环境 Python 依赖清单
├── vercel.json                # Vercel 静态自动构建部署描述文件
├── start_wiki.bat             # Windows 本地一键开发启动脚本
├── build_wiki.bat             # Windows 本地一键静态构建脚本
└── README.md                  # 项目官方文档
```

---

## 📄 版权与声明

Copyright &copy; 2026 Chent Guitao · Kerntau
