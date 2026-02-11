# HIVE STABILITY V2 (Resilient)
- **Circuit Breaker**: 3 consecutive failures trips the fuse.
- **Cooldown**: Expontential backoff starts at 60s, max 1 hour.
- **Auto-Cleanup**: cleanup_locks.js must run before every job.
- **Ghost Protocol**: Active via crontab every 5 mins.
