# group-lab-6
# Coding Lab Group 6

## Project Description
The Hospital Data Monitoring & Archival System is designed to automate the collection, management, and analysis of hospital data. It handles both patient health metrics—such as heart rate and temperature—and resource usage data, like water consumption, ensuring that hospital logs are organized, archived, and analyzed efficiently.

What It Does

Real-Time Data Collection:
The system continuously monitors simulated devices (heart rate monitors, temperature sensors, and water meters), generating live log entries in dedicated files.

Interactive Log Archiving:
Users can select a log file to archive via a simple menu. The system then:

Moves the selected log to a designated archive folder

Renames it with a timestamp (e.g., heart_rate_2026-01-31_18:15:22.log)

Creates a fresh log file for uninterrupted data collection

Automated Data Analysis:
The system can analyze any selected log file to:

Count occurrences of each device

Identify first and last entries for temporal patterns

Append the analysis to a cumulative report for record-keeping and trend tracking

Error Handling and Validation:
The system ensures reliability by:

Validating user input in interactive menus

Detecting missing logs or inaccessible archive directories

Preventing disruptions to active monitoring

##How It Works

Simulated Devices: Python scripts mimic real hospital devices, producing continuous logs stored in hospital_data/active_logs/.

Archival Process (archive_logs.sh): A shell script interacts with the user to select a log for archival. Using commands like mv, touch, and date, it renames and moves files while creating new logs for ongoing monitoring.

Analysis Process (analyze_logs.sh): Another shell script uses awk, grep, sort, and uniq to extract device counts, time ranges, and generate structured reports. Results are appended to reports/analysis_report.txt for historical tracking.

Directory Organization: Active logs, archived logs, and reports are stored in separate directories to maintain a clean structure and avoid clutter.

