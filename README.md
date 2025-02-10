# Disk Usage Logger 🖥️

A Bash script to automate disk usage monitoring on Linux systems. Logs are stored daily and auto-cleaned after 30 days.

## Features ✨
- Logs disk usage with timestamps.
- Self-cleaning (deletes logs older than 30 days).
- No `sudo` required (runs in user space).

## Usage 🚀

### Prerequisites
- Linux/macOS system (tested on Ubuntu 20.04 LTS).
- Bash (`v5.2+`).

### Installation
1. Clone the repo:
   ```bash
   git clone https://github.com/neurospicydev/disk-usage_logger.git
   cd disk-usage_logger
   ```
2. Make the script executable:
   ```bash
   chmod +x disk_logger.sh
   ```

### Scheduling with Cron
To run daily at 9 AM:
1. Open cron:
   ```bash
   crontab -e
   ```
2. Add this line (update the path):
   ```bash
   0 9 * * * /bin/bash /path/to/disk_logger.sh
   ```

## Log Structure 📝
Logs are stored in `~/disk_usage_logs/usage_YYYY-MM-DD.log`.  
Example:
```
[2025-01-01_09:00:00] Disk Usage Report
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1       20G   5G   15G   25% /
----------------------------------------
```

## Contributing 🤝
PRs welcome! Ensure scripts follow [ShellCheck](https://www.shellcheck.net/) standards.
