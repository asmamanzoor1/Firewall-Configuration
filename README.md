# 🚀 UFW Firewall Configuration Project

---

## 📋 Project Overview

For this project, I set up and configured a **basic firewall** using **UFW (Uncomplicated Firewall)** on a Debian 12 virtual machine running inside UTM on my Mac.  
The main goal was to secure the system by allowing **only SSH (port 22)** for remote access, and **blocking all other incoming network traffic**.

This project gave me hands-on experience with firewall configuration — a crucial skill in cybersecurity to protect systems from unauthorized access and network threats.

---

## 🔐 What Is a Firewall & Why It Matters

A **firewall** is like a security gatekeeper for your computer’s network traffic. It controls what data can enter or leave your system based on defined rules — allowing safe connections and blocking harmful or unwanted ones.

In cybersecurity, properly configured firewalls help prevent hackers from exploiting open network ports, reduce attack surfaces, and limit exposure to threats. This project helped me understand how to practically build that first line of defense.

---

## 🧠 What I Did

1. Updated the Debian system and ensured **UFW** was installed and enabled.  
2. Configured UFW rules to:  
   - Allow only SSH connections on port 22  
   - Deny all other incoming connections by default  
   - Allow all outgoing connections  
3. Verified the firewall’s status and rules were active and correct.  
4. Simulated threat detection by testing open and closed ports from my Mac using the `nc` (netcat) tool.  
   - Confirmed SSH port was open and reachable  
   - Confirmed all other tested ports were blocked and unreachable  

---

## 🧩 Issues I Ran Into & How I Fixed Them

- **`ufw: command not found` error:**  
  I discovered UFW was not installed by default in my Debian image, so I installed it with:  
  ```bash
  sudo apt install ufw
UFW initially inactive:
I had to enable the firewall manually using:

  ```bash
sudo ufw enable
```
Networking issues connecting from host Mac to VM:
I checked the VM’s IP address with:
  ```bash
ip a
```

Then ensured UTM’s network settings were set to Bridged Mode so the VM was accessible on the same local network.🧪 Threat Simulation & Testing
To make sure my firewall configuration was effective, I simulated an attacker scanning for open ports using the nc (netcat) tool from my MacThis testing confirmed that only the SSH port was open and accessible, while all other ports were properly blocked — exactly as intended.


💡 What I Learned

How to install, enable, and configure UFW on Debian

The importance of principle of least privilege in firewall rules (only allow what you need)

How to troubleshoot common firewall setup issues

How firewalls protect systems by restricting network traffic

Basic threat detection techniques by port scanning

✨ Why This Project Matters for Cybersecurity

A firewall is often the first line of defense in protecting a network or system. Knowing how to configure and test firewall rules is a foundational skill for anyone in cybersecurity or system administration.

By completing this project, I gained practical knowledge of securing a Linux server, validating firewall effectiveness, and defending against unauthorized network access — all crucial skills in real-world security.


