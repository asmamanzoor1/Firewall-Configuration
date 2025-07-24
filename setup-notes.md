 # 🔐 UFW Firewall Configuration Project NOTES

### 🗓️ Date: July 24, 2025  
### 💻 Platform: Debian 12 (running via UTM on macOS)

---

## 🚀 Project Overview

This project demonstrates how to configure a basic UFW (Uncomplicated Firewall) on a Linux Debian VM to allow SSH access while blocking other traffic.  
It showcases fundamental Linux security configuration and port control.

---

## ⚙️ Tools Used

- 🐧 Debian 12 (via UTM on macOS)
- 🔥 UFW (Uncomplicated Firewall)
- 🧠 Terminal (Bash)
- 🧪 `nc` (netcat) for testing open ports

---

## 🔧 Commands Executed

```bash
sudo ufw allow 22              # Allow SSH
sudo ufw default deny incoming # Deny all incoming traffic by default
sudo ufw default allow outgoing # Allow all outgoing traffic
sudo ufw enable                # Enable the firewall
sudo ufw status verbose        # Check firewall status

