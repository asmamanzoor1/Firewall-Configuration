# 🔐 UFW Firewall Configuration Project

### 🗓️ Date: July 24, 2025  
### 💻 Platform: Debian 12 (via UTM on macOS)

---

## 🚀 Project Overview

Configured a basic UFW firewall to allow SSH (port 22) and block all other incoming traffic.  
Tested using `nc` from macOS Terminal.

---

## 🔧 Tools Used

- Debian 12 VM via UTM
- UFW
- netcat (`nc`)
- Bash terminal

---

## 🧪 Testing Process

- Verified UFW rules with `sudo ufw status verbose`
- Used `nc -zv <vm-ip> 22` to confirm SSH was open
- Checked that other ports were blocked

---

## 💡 What I Learned

- How UFW works
- Importance of port-based filtering
- How to test firewall behavior from external machine

---

📎 This project was done locally using a full VM to simulate a real Linux environment, which is especially useful on macOS where VM support can be limited.
