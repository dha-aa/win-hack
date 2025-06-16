# ⚙️ Win-Hack

A collection of **Windows batch utilities** designed for quick system maintenance, network diagnostics, and Wi-Fi password recovery.

> 🧪 Perfect for IT admins, ethical hackers, and power users who prefer simple yet powerful CMD tools.

---

## 📁 Project Overview

| File Name                | Description                                      |
| ------------------------ | ------------------------------------------------ |
| `clean-temp-files.bat`   | Cleans up system and user temporary files        |
| `get-network.bat`        | Displays local IP, MAC address, DNS, ports, etc. |
| `get-wifi-passwords.bat` | Reveals saved Wi-Fi network names and passwords  |

---

## 🔧 Features

### ✅ `clean-temp-files.bat`

* Deletes junk files from:

  * `%TEMP%`
  * `C:\Windows\Temp`
* Forcefully removes and clears temp directories

> ⚠️ **Use with caution:** This may delete a significant amount of temporary data.

---

### 🌐 `get-network.bat`

* Provides key network details:

  * Hostname and local IPv4 address
  * MAC address
  * Default gateway and DNS servers
  * Interface status
  * Open and listening ports

Ideal for basic troubleshooting and network reconnaissance.

---

### 🔐 `get-wifi-passwords.bat`

* Lists all saved Wi-Fi profiles
* Retrieves clear-text passwords using:

  ```cmd
  netsh wlan show profile name="PROFILE" key=clear
  ```

> ⚠️ **Administrator privileges are required to run this script.**

---

## 🚀 Getting Started

### 🖥️ Requirements

* Windows 10 or later
* Command Prompt with Administrator access

### ▶️ Usage

```bash
# Clone the repository
git clone https://github.com/dha-aa/win-hack.git
cd win-hack

# Run the desired batch script
clean-temp-files.bat
get-network.bat
get-wifi-passwords.bat
```

> 💡 You can also double-click any `.bat` file after opening CMD as an administrator.

---

## 📌 Disclaimer

This project is for **educational and authorized use only**. Running these scripts on systems you do **not own or manage** may be illegal.

---

## 📄 License

Licensed under the [MIT License](LICENSE).

---

## 🙌 Credits

Created with 💻 by [Dhananjay](https://github.com/dha-aa)
