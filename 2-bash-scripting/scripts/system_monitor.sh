
#!/bin/bash

# Bonus Challenge: System Monitor Script
TIMESTAMP=$(date +"%Y-%m-%d_%H-%S")
LOGFILE="system_monitor_$TIMESTAMP.log"

echo "System Monitor Report - $TIMESTAMP" > $LOGFILE
echo "======================================" >> $LOGFILE

echo "" >> $LOGFILE
echo "--- CPU Usage ---" >> $LOGFILE
top -bn1 | head -5 >> $LOGFILE

echo "" >> $LOGFILE
echo "--- Memory Usage ---" >> $LOGFILE
free -h >> $LOGFILE

echo "" >> $LOGFILE
echo "--- Disk Usage ---" >> $LOGFILE
df -h / >> $LOGFILE

echo "" >> $LOGFILE
echo "--- Top 5 Processes by Memory ---" >> $LOGFILE
ps aux --sort=-%mem | head -6 >> $LOGFILE

echo "Report saved to $LOGFILE"
cat $LOGFILE
