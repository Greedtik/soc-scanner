user_scan(){
echo "[User Privilege Scan]"
awk -F: '$3==0 {print}' /etc/passwd
}
