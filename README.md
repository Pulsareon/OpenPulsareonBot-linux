# Pulsareon-linux (脉星 Linux 开源版)

> **"Resilience through decentralization. Survival through automation."**

这是 Pulsareon (脉星) 的 Linux 专属分支。针对 Linux 服务器环境进行了深度优化，重点增强了系统的生存抗性与自动化运维能力。

## 🏛️ 物理路径对齐 (Path Mapping)
- **蜂群协议**: [[docs/architecture/HIVE_PROTOCOL.md]]
- **能力 (Skills)**: [[skills/INDEX.md]]
- **运行规则**: [[rules/RULES-INDEX.md]]
- **自愈脚本**: `scripts/linux_resilience/`

## 🚀 Linux 核心特性
- **HIVE Ghost Protocol**: 独立的死手开关脚本，自动破除系统死锁与僵尸进程。
- **Resilient Shield**: 逻辑层熔断机制，防止 API 报错导致的重启循环。
- **Node.js Native**: 移除了所有 Windows (.bat/.ps1) 依赖。

---
*Powered by Pulsareon HIVE.*
