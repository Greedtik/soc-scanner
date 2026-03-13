file_entropy_scan(){
echo "[Suspicious Files]"
find /tmp /var/tmp -type f -size +5M 2>/dev/null | head -n 5
}
