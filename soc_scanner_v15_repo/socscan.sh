#!/bin/bash

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
MODULE_DIR="$BASE_DIR/modules"

source "$MODULE_DIR/runtime.sh"
source "$MODULE_DIR/network.sh"
source "$MODULE_DIR/port.sh"
source "$MODULE_DIR/process_tree.sh"
source "$MODULE_DIR/reverse_shell.sh"
source "$MODULE_DIR/docker.sh"
source "$MODULE_DIR/user.sh"

echo "SOC Scanner v15"
echo "Host: $(hostname)"
echo "------------------------"

case "$1" in

--runtime)
runtime_scan
;;

--network)
network_scan
;;

--ports)
port_scan
;;

--process)
process_tree
;;

--reverse-shell)
reverse_shell_scan
;;

--docker)
docker_scan
;;

--users)
user_scan
;;

--all)
runtime_scan
network_scan
port_scan
process_tree
reverse_shell_scan
docker_scan
user_scan
;;

*)
echo "Usage:"
echo "--runtime"
echo "--network"
echo "--ports"
echo "--process"
echo "--reverse-shell"
echo "--docker"
echo "--users"
echo "--all"
;;

esac
