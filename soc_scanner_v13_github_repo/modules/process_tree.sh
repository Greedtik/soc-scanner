process_tree(){
echo "[Process Tree]"
ps -eo pid,ppid,cmd --forest | head -n 20
}
