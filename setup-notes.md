
## 🚀 Project Overview

I configured a basic firewall using **UFW (Uncomplicated Firewall)** on a Debian 12 VM inside UTM on my Mac.  
The goal was to **allow only SSH (port 22)** for remote access, while **blocking all other incoming connections**.



## 🧠 Steps I Took

### 1. ✅ Update & Install UFW (already installed in Debian)

```bash
sudo apt update && sudo apt upgrade
sudo ufw enable
```
If UFW wasn’t already installed, I would’ve done:
```bash
sudo apt install ufw
```

2. 🔒 Set Firewall Rules
```bash
sudo ufw allow 22                 # Allow SSH (port 22)
sudo ufw default deny incoming    # Deny all other incoming traffic
sudo ufw default allow outgoing   # Allow all outgoing traffic
sudo ufw status verbose           # Verify status
```
🧪 Threat Simulation (Port Scanning from Host Mac)
I used nc (netcat) from my Mac to simulate an outside attacker checking for open ports:

```bash
nc -zv <vm-ip> 22         # ✅ Successful (SSH allowed)
nc -zv <vm-ip> 23         # ❌ Connection refused (Telnet)
nc -zv <vm-ip> 80         # ❌ Connection refused (HTTP)
```
🧪 Result: Only SSH was open. Everything else was blocked.
That's how I confirmed the firewall was working perfectly 🎯



