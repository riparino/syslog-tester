# Syslog Payload Sender

This project provides a simple script to send syslog payloads from a log file to a specified syslog server using UDP.

## Files

### `send-syslog-payload.ps1`
This PowerShell script reads log entries from `logs.txt` and sends them to a syslog server using the `ncat` utility.

- **Inputs**:
  - `logs.txt`: The log file containing syslog-formatted messages.
  - `$server`: The target syslog server's IP or hostname (to be configured in the script).
  - `$port`: The target syslog server's port (default is 514).
- **Usage**:
  1. Install `ncat` if not already installed.
  2. Set the `$server` variable to the target syslog server.
  3. Run the script in PowerShell.

### `logs.txt`
This file contains syslog-formatted messages in the Common Event Format (CEF). Each line represents a log entry.

## Prerequisites

- PowerShell
- `ncat` utility (part of the Nmap suite)

## Usage

1. Open `send-syslog-payload.ps1` and configure the `$server` variable with the target syslog server's IP or hostname.
2. Run the script:
   ```powershell
   .\send-syslog-payload.ps1
   ```