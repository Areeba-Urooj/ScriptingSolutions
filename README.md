# RAM Monitor Script

A simple Bash script to monitor available RAM and provide warnings when memory falls below a specified threshold.

## Overview

This script checks the system's available RAM and compares it against a predefined threshold. If available memory falls below the threshold, it displays a warning message. Otherwise, it confirms that RAM is sufficient.

## Features

- Monitors total available RAM in MB
- Configurable memory threshold
- Clear visual warning messages
- Lightweight and easy to use

## Prerequisites

- Linux-based operating system
- `free` command (typically pre-installed on most Linux distributions)
- `awk` command (typically pre-installed on most Linux distributions)

## Configuration

The script uses the following key variables:

- `FREE`: Captures the current available RAM in MB
- `TH`: Threshold value in MB (default: 8500)

You can modify the threshold value by changing the `TH` variable in the script.

## Usage

1. Save the script as `ram_monitor.sh`
2. Make the script executable:
   ```bash
   chmod +x ram_monitor.sh
   ```
3. Run the script:
   ```bash
   ./ram_monitor.sh
   ```

## Output

The script will display one of two messages:
<img src="![](ram-p3.PNG)" alt="Screenshot showing the script on my ubuntu VM" />
<img src="![](ram-p2.PNG)" alt="Screenshot showing normal operation with disk space in good condition" />
<img src="![](ram-p1.PNG)" alt="Screenshot showing normal operation with disk space in good condition" />


When RAM is below threshold:
```
------------------------------
          WARNING!!!
      RAM is running low...
------------------------------
```

When RAM is sufficient:
```
------------------------------
RAM is sufficient...
------------------------------
```

## Automation

You can automate this script by:
1. Adding it to your crontab for periodic checks
2. Including it in your system's startup scripts
3. Running it as part of a larger system monitoring solution

Example crontab entry to run every hour:
```bash
0 * * * * /path/to/ram_monitor.sh
```

## Contributing

Feel free to fork this script and modify it according to your needs. Contributions and improvements are welcome.

## License

This script is released under the MIT License. Feel free to use, modify, and distribute it as needed.
