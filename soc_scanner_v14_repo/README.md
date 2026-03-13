# SOC Scanner v14
**โครงสร้าง repository**
```text
soc_scanner_v14
├── soc.sh
├── install.sh
├── README.md
├── modules
│   ├── runtime.sh
│   ├── network.sh
│   ├── port.sh
│   ├── process_tree.sh
│   ├── reverse_shell.sh
│   ├── user.sh
│   ├── docker.sh
│   ├── file_entropy.sh
│   └── threat_intel.sh
└── ioc
    └── malicious_ips.txt
```
**วิธีเรียกใช้งานบน server ลูกค้า วิธีที่ง่ายที่สุด**

```bash
git clone https://github.com/Greedtik/soc_scanner.git
cd soc_scanner
sudo bash soc.sh
```
**วิธี run ตรงจาก GitHub**
**ไม่ต้อง clone**
```bash
curl -s https://raw.githubusercontent.com/Greedtik/soc_scanner/main/soc.sh | sudo bash
หรือ
wget -qO- https://raw.githubusercontent.com/Greedtik/soc_scanner/main/soc.sh | sudo bash
```

**วิธีติดตั้งเป็น command**

บน server
```bash
sudo bash install.sh

หลังจากนั้นใช้ได้เลย

sudo socscan
```
