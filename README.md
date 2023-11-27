# AWS Resource Tracker

## Overview

This project is a simple AWS resource tracker script that reports information about S3 buckets, EC2 instances, Lambda functions, and IAM users. The script is designed to be run as a cron job, providing regular updates on AWS resource usage.

## Project Structure

- **AWS_resource_tracker.sh:** The main script that queries AWS resources and generates reports.
- **cronlog.log:** Log file capturing the output and errors from cron job executions.

## Prerequisites

Before running the script, make sure you have the following prerequisites:

- **AWS CLI:** Installed and configured with the necessary access credentials.
- **jq:** A lightweight and flexible command-line JSON processor.

## Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/AWS-Resource-Tracker.git
    ```

2. **Make the script executable:**

    ```bash
    chmod +x AWS_resource_tracker.sh
    ```

3. **Set up the cron job:**

    ```bash
    crontab -e
    ```

    Add the following line to run the script every day at 9:00 PM:

    ```plaintext
    0 21 * * * /path/to/AWS_resource_tracker.sh >> /path/to/cronlog.log 2>&1
    ```

## Usage

### Manual Execution

Run the script manually for immediate results:

```bash
./AWS_resource_tracker.sh
