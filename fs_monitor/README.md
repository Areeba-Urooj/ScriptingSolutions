# Disk Space Monitor

A Bash script that monitors disk space usage and sends email alerts when storage exceeds a specified threshold.

## Overview

This script monitors the disk space usage of a specific partition (sda3) and sends an email alert when the usage exceeds a predefined threshold. It's designed for Linux systems and uses the native mail command for notifications.

## Features

- Monitors disk space usage percentage
- Configurable threshold for alerts
- Email notifications
- Specific partition monitoring (sda3)
- Simple status messages

## Prerequisites

- Linux-based operating system
- `df` command (pre-installed on most Linux distributions)
- `mail` command (you may need to install it using `sudo apt-get install mailutils`)
- Configured SMTP server for email notifications

## Configuration

The script uses these key variables:

- `FS`: Current disk usage percentage
- `TH`: Threshold percentage (default: 50%)
- `TO`: Email recipient address

## Installation

1. Save the script as `disk_monitor.sh`
2. Make it executable:
   ```bash
   chmod +x disk_monitor.sh
   ```
3. Configure your email settings in `/etc/ssmtp/ssmtp.conf` or appropriate mail configuration file

## Usage

Run the script:
```bash
./disk_monitor.sh
```

## Output Screenshots

### Normal Operatin
<img src="fs_monitor/fs-2.PNG" alt="Screenshot showing the script on my ubuntu VM" />
<img src="fs_monitor/fs-p1.PNG" alt="Screenshot showing normal operation with disk space in good condition" />


## Automation

To run the script periodically, add it to crontab:

1. Open crontab:
   ```bash
   crontab -e
   ```

2. Add a line to run it daily:
   ```bash
   0 0 * * * /path/to/disk_monitor.sh
   ```

## Script Breakdown

```bash
FS=$(df -h | egrep -v "Filesystem|tmpfs" | grep sda3 | awk '{print $5}' | tr -d %)
```
- Gets disk usage percentage for sda3 partition
- Removes the '%' symbol from the output
- Stores the numeric value in FS variable

```bash
if [[ $FS -ge $TH ]]
```
- Compares current usage against threshold
- Triggers email alert if threshold is exceeded

## Customization

1. Change the monitored partition:
   - Modify `grep sda3` to match your partition name

2. Adjust threshold:
   - Modify `TH=50` to your desired percentage

3. Change email recipient:
   - Modify `TO="cmy61677@gmail.com"` to your email address

## Troubleshooting

1. If email notifications aren't working:
   - Check mail server configuration
   - Verify email address is correct
   - Ensure mail command is installed

2. If script isn't detecting partition:
   - Verify partition name with `df -h`
   - Adjust grep pattern accordingly

## License

This script is released under the MIT License. Feel free to modify and distribute as needed.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
