#!/usr/bin/bash

LOG_DIR="hospital_data/active_logs"

echo "Select log to archive:"
echo "1) Heart Rate"
echo "2) Temperature"
echo "3) Water Usage"
read -p "Enter choice (1-3): " choice

case $choice in
  1)
    FILE="$LOG_DIR/heart_rate_log.log"
    ARCHIVE_DIR="hospital_data/heart_data_archive"
    NAME="heart_rate"
    DISPLAY_NAME="heart_rate.log"
    ;;
  2)
    FILE="$LOG_DIR/temperature_log.log"
    ARCHIVE_DIR="hospital_data/temp_data_archive"
    NAME="temperature"
    DISPLAY_NAME="temperature.log"
    ;;
  3)
    FILE="$LOG_DIR/water_usage_log.log"
    ARCHIVE_DIR="hospital_data/water_usage_archive"
    NAME="water_usage"
    DISPLAY_NAME="water_usage.log"
    ;;
  *)
    echo "Invalid choice. Please choose among the available options!!"
    exit 1
    ;;
esac
