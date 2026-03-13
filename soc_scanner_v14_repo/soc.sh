#!/bin/bash
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
MODULE_DIR="$BASE_DIR/modules"
IOC_DIR="$BASE_DIR/ioc"
RISK=0

source "$MODULE_DIR/runtime.sh"
source "$MODULE_DIR/network.sh"
source "$MODULE_DIR/port.sh"
source "$MODULE_DIR/process_tree.sh"
source "$MODULE_DIR/reverse_shell.sh"
source "$MODULE_DIR/user.sh"
source "$MODULE_DIR/docker.sh"
source "$MODULE_DIR/file_entropy.sh"
source "$MODULE_DIR/threat_intel.sh"

echo "SOC Scanner v14"
echo "Host: $(hostname)"
echo "========================"

runtime_scan
network_scan
port_scan
process_tree
reverse_shell_scan
user_scan
docker_scan
file_entropy_scan
threat_intel_scan

echo "========================"
echo "Total Risk Score: $RISK"
