threat_intel_scan(){
echo "[Threat Intel]"
while read ip
do
 echo "Malicious IP: $ip"
done < "$IOC_DIR/malicious_ips.txt"
}
