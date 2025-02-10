#!/bin/bash

# Configuration
LOG_DIR="$HOME/disk_usage_logs"  # Logs stored in home directory
LOG_FILE="$LOG_DIR/usage_$(date +\%Y-\%m-\%d).log"

# Auto-delete logs older than 30 days
MAX_LOG_DAYS=30

# Creates log directory if it does not exist
mkdir -p "$LOG_DIR"

# Logs disk usage with daily timestamp
{
  echo "[$(date +\%Y-\%m-\%d_\%H:\%M:\%S)] Disk Usage Report" >> "$LOG_FILE"
  df -h >> "$LOG_FILE"  # Human-readable format of disk usage
  echo "----------------------------------------"
} >> "$LOG_FILE"

# Clean up old logs (delete)
find "$LOG_DIR" -name "usage_*.log" -type f -mtime +$MAX_LOG_DAYS -delete
