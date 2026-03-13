network_scan(){
echo "[Network Scan]"
ss -plant 2>/dev/null | grep ESTAB
}
