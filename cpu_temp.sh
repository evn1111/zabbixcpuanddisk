#!/bin/bash
cpu_temp=$(sensors | grep "CPU:" | awk '{print $2}' | sed 's/+//;s/°C//')
echo "$cpu_temp"
