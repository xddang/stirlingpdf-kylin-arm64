# Stirling-PDF · 麒麟(AArch64) 离线重打包版

> 面向 **银河麒麟 / 飞腾(Phytium) ARM64** 环境的本地 PDF 处理工具。
> 本仓库为开源项目上游代码的**二次编译/重打包** .deb 安装包，内置 JRE 25 + Tesseract OCR，仅供离线内网环境直接安装使用。

## 版本来源
- **上游开源项目**：`Stirling-Tools/Stirling-PDF` v3.0.0（GitHub）
- **打包类型**：`.deb` 离线安装包，内置 **JRE 25 (aarch64)** + **Tesseract OCR（简体中文）**
- **架构**：AArch64 (arm64)
- **打包时间**：2026-10-09
- **构建流程**：联网麒麟 9000 编译 → 迁移到断网飞腾 D3000 (aarch64) 离线安装

---

## 下载

`.deb` 安装包（~461 MiB）。因**超过 Gitee 单附件 100MB 限制**，提供两种方式：

### 方式 1：GitHub 直接下载（单文件，最省事）
<https://github.com/xddang/stirlingpdf-kylin-arm64/releases/download/v1.0/stirling-pdf-lite_3.0.2_arm64.deb>

### 方式 2：Gitee 7-Zip 多卷压缩包（国内快）
在 Gitee 发行版页下载 **全部 6 个卷**：
<https://gitee.com/hy2431579034/stirlingpdf-kylin-arm64/releases>

```
stirling-pdf-lite_3.0.2_arm64.7z.001   (90.0 MB)
stirling-pdf-lite_3.0.2_arm64.7z.002   (90.0 MB)
stirling-pdf-lite_3.0.2_arm64.7z.003   (90.0 MB)
stirling-pdf-lite_3.0.2_arm64.7z.004   (90.0 MB)
stirling-pdf-lite_3.0.2_arm64.7z.005   (90.0 MB)
stirling-pdf-lite_3.0.2_arm64.7z.006   (10.8 MB)
```

解压方式（六卷放在同一目录，解第一个卷即可）：
- **Windows**：用 7-Zip 或 WinRAR 打开 `stirling-pdf-lite_3.0.2_arm64.7z.001` → 提取 → 得到 `stirling-pdf-lite_3.0.2_arm64.deb`
- **Linux / 麒麟**：
  ```bash
  sudo apt install p7zip-full        # 若未安装
  7z x stirling-pdf-lite_3.0.2_arm64.7z.001
  ```

校验（解压出的 `.deb`）：
```bash
sha256sum stirling-pdf-lite_3.0.2_arm64.deb
# 应输出: C3E7261C0165DA3D6E425E0A9A4E5BD3DB86C3BF2DD6BE02C237A377CECA62CA
```

---

## 安装与使用
```bash
sudo dpkg -i stirling-pdf-lite_3.0.2_arm64.deb
```
- 启动：`/opt/stirling-pdf/bin/start.sh`
- 浏览器访问：`http://localhost:8080`

> ⚠️ 仅支持本地 PDF 处理与 OCR，**不含 LibreOffice**，不支持 Office 格式互转。
> 若提示缺基础库（`libc6 / libstdc++6 / zlib1g / libfreetype6 / libfontconfig1 / libgomp1`），需在联网麒麟上提前补齐对应 arm64 deb 一并安装。

## 校验信息 (SHA-256)
解压出的整文件：
```
C3E7261C0165DA3D6E425E0A9A4E5BD3DB86C3BF2DD6BE02C237A377CECA62CA  stirling-pdf-lite_3.0.2_arm64.deb
```
各压缩卷：见 `ARCHIVE-SHA256SUMS.txt`。

## 免责声明
- 本仓库为开源项目上游代码的二次编译/重打包产物，版权归上游项目所有。
- 请在开源许可范围内使用；与上游项目官方无关。

*生成：DeepSeek Harness 协助整理 · 2026-11-22*