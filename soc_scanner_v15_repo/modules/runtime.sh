runtime_scan(){

echo "[Runtime Scan]"
echo "Memory:"
free -h

echo
echo "Top CPU Processes:"
ps -eo pid,user,%cpu,%mem,cmd --sort=-%cpu | head

}
