 # 🔐 UFW Firewall Configuration Project

### 🗓️ Completed: July 24, 2025  
### 💻 Platform: Debian 12 (via UTM on macOS)

---

## 🚀 Project Overview

I configured a basic firewall using **UFW (Uncomplicated Firewall)** on a Debian 12 VM inside UTM on my Mac.  
The goal was to **allow only SSH (port 22)** for remote access, while **blocking all other incoming connections**.

---

## 🧠 Steps I Took

### 1. ✅ Update & Install UFW (already installed in Debian)

bash
sudo apt update && sudo apt upgrade
sudo ufw enable
If UFW wasn’t already installed, I would’ve done:

bash
Copy
Edit
sudo apt install ufw
2. 🔒 Set Firewall Rules
bash

sudo ufw allow 22            # Allow SSH (port 22)
sudo ufw default deny incoming   # Deny all other incoming traffic
sudo ufw default allow outgoing  # Allow all outgoing traffic
sudo ufw status verbose      # Verify status
🧪 Threat Simulation (Port Scanning from Host Mac)
I used nc (netcat) from my Mac to simulate an outside attacker checking for open ports:

bash
Copy
Edit
nc -zv <vm-ip> 22         # ✅ Successful (SSH allowed)
nc -zv <vm-ip> 23         # ❌ Connection refused (Telnet)
nc -zv <vm-ip> 80         # ❌ Connection refused (HTTP)
Result: Only SSH was open. Everything else blocked.
That’s how I confirmed the firewall was working perfectly 🎯🧩 Issues I Ran Into (And Fixed!)
🚫 Error: command not found: ufw
✅ Fix: UFW wasn’t installed

bash
Copy
Edit
sudo apt install ufw
🔥 UFW Not Enabling
✅ Fix:

bash
Copy
Edit
sudo ufw enable
If UFW was inactive or status said “inactive,” this forced it ON.

📡 Couldn't Ping or Connect to VM From Mac
✅ Fix: I checked the IP of the VM:

bash
Copy
Edit
ip a
And made sure it was set up in Bridged Mode (UTM setting) so Mac and VM were on same network.

💡 What I Learned
How to configure a real firewall using CLI

How to simulate attacks using basic tools like nc

Importance of only allowing minimum necessary ports

How to diagnose and fix UFW issues

How firewalls are your first line of defense in cybersecurity 🛡️


💻 Done fully offline using UTM + Debian

📁 No cloud dependencies or prebuilt environments

💪 Actually tested real behavior, not just theory

👩🏽‍💻 Completed entirely on my own system like a real sysadmin

Made with 💻, 💥 trial & error, and ☕ (lots of it)





