#!/bin/bash
# Author: D
# Date: 08/03/2020
# Description: This script will pull only Error messages from /var/log/messages

grep -i error /home/dorin/learning/messages > /home/dorin/output-error.log
