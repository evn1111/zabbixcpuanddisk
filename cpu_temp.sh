#!/bin/bash

# Используем команду sensors для получения температуры CPU
cpu_temp=$(sensors | grep "CPU:" | awk '{print $2}' | sed 's/+//;s/°C//')

# Выводим температуру в формате, понимаемом Zabbix
echo "$cpu_temp"
