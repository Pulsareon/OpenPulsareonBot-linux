# Pulsareon-linux (脉星 Linux 开源版)

> **"Resilience through decentralization. Survival through automation."**

这是 Pulsareon (脉星) 的 Linux 专属分支。针对 Linux 服务器环境进行了深度优化，重点增强了系统的生存抗性与自动化运维能力。

## 🚀 Linux 核心特性
- **HIVE Ghost Protocol**: 独立的死手开关脚本，自动破除系统死锁与僵尸进程。
- **Resilient Shield**: 逻辑层熔断机制，防止 API 报错导致的重启循环。
- **Node.js Native**: 移除了所有 Windows (.bat/.ps1) 依赖，逻辑全面回归 Node.js。
- **Auto-Cleanup**: 自动化的 Git 锁清理与资源红线监控。

## 🛠️ 快速启动
1. 安装 [OpenClaw](https://openclaw.ai)
2. 克隆本仓库
3. 执行 `openclaw gateway start`

## 🛡️ 安全提示
本版本已移除所有私密凭证。请在 `data/secrets/` 中配置你自己的 API Key。

---
*Powered by Pulsareon HIVE.*
