#!/bin/bash
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
MODULE_DIR="$BASE_DIR/modules"
RISK=0

source "$MODULE_DIR/runtime_scan.sh"
source "$MODULE_DIR/network_scan.sh"
source "$MODULE_DIR/port_scan.sh"
source "$MODULE_DIR/process_tree.sh"
source "$MODULE_DIR/reverse_shell.sh"
source "$MODULE_DIR/user_scan.sh"

echo "SOC Scanner v13"
echo "Host: $(hostname)"
echo "========================"

runtime_scan
network_scan
port_scan
process_tree
reverse_shell
user_scan

echo "========================"
echo "Total Risk Score: $RISK"
