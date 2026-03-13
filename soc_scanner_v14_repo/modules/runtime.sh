runtime_scan(){
echo "[Runtime Scan]"
RAM=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2*100}')
echo "RAM Usage: ${RAM}%"
ps -eo pid,ppid,user,%cpu,%mem,cmd --sort=-%cpu | head -n 6
}
