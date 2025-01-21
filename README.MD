<p align="right">
   <a href="https://www.buymeacoffee.com/jorcelinojunior" target="_blank">
      <img src="https://img.buymeacoffee.com/button-api/?text=buy me a coffee&emoji=☕&slug=jorcelinojunior&button_colour=ffda33&font_colour=000000&font_family=Bree&outline_colour=000000&coffee_colour=FFDD00" width="160" alt="Buy Me a Coffee"/>
   </a>
</p>

<p align="center">
  <img src="https://mintlify.s3-us-west-1.amazonaws.com/cursor/images/logo/app-logo.svg" alt="Cursor Icon" width="100"/>
</p>

<h1 align="center">Cursor Setup Wizard</h1>

<p align="center"><strong>A streamlined script to set up Cursor on Ubuntu-based systems with ease 🚀</strong></p>

<p align="center">
  Cursor Setup Wizard is a Bash script designed to simplify the installation, configuration, and even updates to the latest versions of Cursor — <em>sometimes beyond what's available on the official site (<a href="https://gist.github.com/jorcelinojunior/131748e12a039c02148a6f66e1fb312c?permalink_comment_id=5306523#gistcomment-5306523" target="_blank">see feedback</a>)</em>.<br/>
  Built specifically for Ubuntu-based systems, it addresses long-standing issues not resolved by Cursor itself, automates complex setup steps, and ensures a seamless experience for Linux users.
</p>

<p align="center">
  <a href="https://buymeacoffee.com/jorcelinojunior" target="_blank"><img alt="Buy Me a Coffee" src="https://img.shields.io/badge/Buy%20Me%20a%20Coffee-Support%20Me-FFDA33"></a>
  <img alt="Bash Script" src="https://img.shields.io/badge/Bash-Script-blue">
  <img alt="Ubuntu-Compatible" src="https://img.shields.io/badge/Ubuntu-Compatible-E95620">
  <img alt="License" src="https://img.shields.io/badge/License-MIT-blueviolet">
  <a href="https://github.com/jorcelinojunior/cursor-setup-wizard/issues" target="_blank"><img alt="Issues" src="https://img.shields.io/github/issues/jorcelinojunior/cursor-setup-wizard"></a>
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/jorcelinojunior/cursor-setup-wizard/main/images/cursor-setup-wizard-compressed.gif" alt="Cursor Setup Wizard in Action" width="920"/>
</p>

---

## 📖 Table of Contents

- [❓ Why Cursor Setup Wizard?](#why-cursor-setup-wizard)
- [📋 Prerequisites](#-prerequisites)
- [🚀 Quick Start](#-quick-start)
- [⭐ Features](#-features)
- [🛠️ How It Works](#%EF%B8%8F-how-it-works)
- [🧑‍💻 Contributing](#-contributing)
- [🔧 Improving the Script](#-improving-the-script)
  - [Recommended Extensions](#recommended-extensions)
  - [Debugging Tips](#debugging-tips)
- [🐞 Troubleshooting](#-troubleshooting)
  - [`No local version found`](#no-local-version-found)
  - [`The password was incorrect`](#the-password-was-incorrect)
  - [`Cursor Fails to Start`](#cursor-fails-to-start)
  - [`Launcher Issues`](#launcher-issues)
  - [`Dependency Errors`](#dependency-errors)
  - [`Gum Version Compatibility`](#gum-version-compatibility)
- [📜 License](#-license)
- [☕ Support This Project](#support-this-project)
- [💼 Open to Collaborations](#open-to-collaborations)

---

<details id="why-cursor-setup-wizard">
   <summary><h2>❓Why Cursor Setup Wizard?</h2></summary><br/>
   <p>
      This script was born from the frustration many Linux users faced, including myself, with the tedious and error-prone process of setting up <a href="https://www.cursor.com" target="_blank">Cursor</a>. These issues, highlighted in <a href="https://github.com/getcursor/cursor/issues/1465" target="_blank">issue #1465 from the official Cursor repository</a>, made it clear that an automated solution was needed.<br/><br/>
      I initially shared a workaround in a <a href="https://gist.github.com/jorcelinojunior/131748e12a039c02148a6f66e1fb312c" target="_blank">gist</a>, and the thoughtful feedback and suggestions in the comments inspired me to refine it into the tool you see here. The collaborative input from the community, including suggestions, feature requests, and shared solutions, was instrumental in shaping this project.<br/><br/>
      Cursor Setup Wizard ensures you can focus on what truly matters: coding, without the hassle of manual steps.<br/><br/>
      <small><em>🌟 I hope this repository proves helpful to others as well. It's an evolution of one of my first contributions, and I look forward to creating even more tools to assist the community. Feedback and improvements are always welcome! 💜</em></small>
   </p>
</details>

---

## 📋 Prerequisites

- **Supported OS**: Ubuntu-based Linux distributions (e.g., Ubuntu, Pop!_OS, Linux Mint, etc).
- **Permissions**: `sudo` privileges for dependency installation and system configuration.
- **Internet Connection**: Required to download Cursor, its components and dependencies.

---

## 🚀 Quick Start

To get started immediately, run:

```bash
bash <(curl -s https://raw.githubusercontent.com/jorcelinojunior/cursor-setup-wizard/main/install.sh)
```

This command downloads the main script (`cursor_setup.sh`), places it in `${HOME:-~}/cursor-setup-wizard/`, makes it executable, and runs it. It's the fastest way to set up Cursor without hassle.

---

## ⭐ Features

- **All-In-One Installation**: Automatically fetch, download, and configure Cursor.
- **AppArmor Integration**: Applies a basic security profile for added safety.
- **Launcher Creation**: Generates launchers for both desktop and application menus to provide quick access.
- **CLI Command**: Adds a `cursor` command for launching Cursor from the terminal.
- **Interactive UI**: Provides an enhanced terminal experience using [`gum`](https://github.com/charmbracelet/gum).
- **Script Editing**: Built-in menu option for editing the script with your preferred editor.

---

## 🛠️ How It Works

When you run the script, you’ll see an interactive menu like this:

<p><img src="https://raw.githubusercontent.com/jorcelinojunior/cursor-setup-wizard/main/images/menu.png" alt="Cursor Setup Wizard Menu" width="600"/></p>

- **All-in-One**: Fully automates the download, setup, and configuration process.
- **Reconfigure All**: Reuses the existing AppImage for reconfigurations without re-downloading.
- **Setup AppArmor Profile**: Configures or reapplies AppArmor for enhanced security.
- **Add 'cursor' CLI Command**: Adds or updates the `cursor` terminal command.
- **Edit This Script**: Opens the script in your preferred editor for customization.
- **Exit**: Closes the wizard.

At each step, the script provides clear prompts, spinners, and detailed logs to keep you informed.

---

## 🧑‍💻 Contributing

Contributions are always welcome, and I’d love to hear your suggestions or improvements! Even though it’s a simple script, every contribution will be thoughtfully considered.

If you're interested in contributing, here are some areas where your help would be especially valuable:
- Improving the script’s **user experience**.
- Adding support for **new Linux distributions**.
- Implementing **new features** that enhance the script’s functionality.
- Suggesting improvements for **error handling** or **debugging tools**.

To get started:

1. **Fork the Repository**: Use the ["Fork"](https://github.com/jorcelinojunior/cursor-setup-wizard/fork) button to create your own copy.
2. **Clone Your Fork**:
   ```bash
   git clone https://github.com/<your-username>/cursor-setup-wizard.git
   cd cursor-setup-wizard
   ```
3. **Create a New Branch**:
   ```bash
   git checkout -b feature/my-new-feature
   ```
4. **Make and Test Your Changes**: Modify the code, add features, or fix bugs. Run the script locally to ensure everything works as expected.
5. **Commit** your changes and **push** them to your fork.:
   ```bash
   git commit -am 'Add some feature'
   git push origin feature/my-new-feature
   ```
6. **Open a Pull Request**: Submit your changes with a clear and descriptive title and explanation of your improvements.

Feel free to reach out if you have any questions. Your contributions make this project better! 😊

---

## 🔧 Improving the Script

If you're interested in debugging or enhancing the script, here are some resources and tips to help you get started!

### Recommended Extensions

<p><img src="https://raw.githubusercontent.com/jorcelinojunior/cursor-setup-wizard/main/images/extensions.png" alt="Recommended Extensions" width="450"/></p>

To make your development experience smoother, consider using these tools:

- [**Bash Debug**](https://marketplace.visualstudio.com/items?itemName=rogalmic.bash-debug): Debug Bash scripts to inspect stages and diagnose issues.
- [**ShellCheck**](https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck): Identify syntax issues and improve script quality.
- [**shell-format**](https://marketplace.visualstudio.com/items?itemName=foxundermoon.shell-format): Format and lint Bash scripts for better readability.

### Debugging Tips

<p><img src="https://raw.githubusercontent.com/jorcelinojunior/cursor-setup-wizard/main/images/debug.png" alt="Debugging in Action" width="800"/></p>

This script includes pre-configured settings for debugging in VS Code or other editors. Follow these steps to get started:

1. **Install the [Bash Debug](https://marketplace.visualstudio.com/items?itemName=rogalmic.bash-debug) Extension**.
2. **Open the Script in Cursor/VSCode**:
   - Navigate to the folder where the repository was cloned.
3. **Select a Debug Configuration**:
   - Use one of the two provided configurations:
     - `Debug cursor_setup.sh`: Debug the main script.
     - `Bash-Debug Current File`: Debug the currently open Bash file.
4. **Set Breakpoints**:
   - Add breakpoints in the script where you want to inspect execution.
5. **Start Debugging**:
   - Launch the debugger and step through the script interactively.

---

## 🐞 Troubleshooting

### Common Issues and Fixes

#### **`Failed to fetch headers from the server`**
This error occurs when the script cannot retrieve necessary headers from the server. Possible solutions include:
- Ensure your internet connection is stable.
- Check if the `VERSION_CHECK_TIMEOUT` value (default **`5` sec**) is sufficient for your connection speed. Increase it if necessary.
- Verify that the `DOWNLOAD_URL` is correct. If you’ve modified it, ensure it points to a valid resource. The default is: [`https://downloader.cursor.sh/linux/appImage/x64`](https://downloader.cursor.sh/linux/appImage/x64).

<img src="https://raw.githubusercontent.com/jorcelinojunior/cursor-setup-wizard/main/images/online-fetch-failure.png" alt="✖ Failed to fetch headers from the server" width="850"/>

---

#### **`No local version found`**
If you encounter this error, it means the AppImage could not be located. Use **`All-in-One`** to fetch it again.

<img src="https://raw.githubusercontent.com/jorcelinojunior/cursor-setup-wizard/main/images/no-local-version-found.png" alt="✖ No local version found in..." width="500"/>

---

#### **`The password was incorrect`**
If you see this message, re-enter your password to proceed.

<img src="https://raw.githubusercontent.com/jorcelinojunior/cursor-setup-wizard/main/images/the-password-was-incorrect.png" alt="✖ Oops! The password was incorrect. Try again." width="500"/>

---

#### **`Cursor Fails to Start`**
Check if AppArmor is active. Reapply its profile via the menu if needed (option **`Setup AppArmor Profile`**).

---

#### **`Launcher Issues`**
If the `.desktop` file is marked as untrusted, ensure `gio` is installed and D-Bus is running.

<img src="https://raw.githubusercontent.com/jorcelinojunior/cursor-setup-wizard/main/images/untrusted-desktop-file.png" alt="Untrusted .desktop file" width="250"/>

---

#### **`Dependency Errors`**
Most of the required dependencies are already included by default in Ubuntu-based systems. The script performs a quick check to ensure everything is ready and installs any missing packages automatically. An active internet connection is needed for this process.

---

#### **`Gum Version Compatibility`**
The script requires **`gum`** version **0.14.5**. Avoid running `sudo apt update` while the script is open, as it may upgrade **`gum`** to version **0.15.0**, which can cause unexpected behavior. Restart the script if you update your system.

---

## 📜 License

This script is licensed under the [MIT License](./LICENSE). Feel free to use, modify, and distribute it as needed.

---

<h2 id="support-this-project" align="center">☕ Support This Project</h2>

<p align="center">
  <strong>
      If this script has been helpful, consider supporting my work and keeping the magic alive!<br/>
      Your contributions help maintain and improve tools like this one. 🌟
   </strong>
</p>

<p align="center">
   <a href="https://www.buymeacoffee.com/jorcelinojunior" target="_blank">
      <img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=☕&slug=jorcelinojunior&button_colour=ffda33&font_colour=000000&font_family=Bree&outline_colour=000000&coffee_colour=FFDD00" alt="Buy Me a Coffee"/>
   </a>
</p>

<p align="center">
  <strong><em>Thank you for your kindness and support! 💜</em></strong>
</p>

---

<h3 id="open-to-collaborations" align="center">💼 Open to Collaborations</h3>

<p align="center">
  <small>
    <strong>Are you looking for someone who thrives on tackling challenges and building impactful solutions?</strong>
  </small>
</p>

<p align="center">
  <small>
    <em>
      With over 8 years of experience in backend development, Linux automation, scalable systems, and AI-driven solutions,<br/>
      I enjoy working independently on creative projects that deliver real value.<br/>
      Passionate about exploring new ideas and technologies, I aim to transform innovative visions into extraordinary realities.<br/>
      Let’s collaborate and create something exceptional together! ✨
    </em>
  </small>
</p>

<p align="center">
  <small>
    📩 <strong>Feel free to send me a message—I’d love to hear from you:</strong> 💬
  </small>
</p>

<p align="center">
  <a href="https://t.me/jorcelinojunior" target="_blank"><img src="https://raw.githubusercontent.com/jorcelinojunior/cursor-setup-wizard/main/images/telegram.png" alt="Telegram" width="50"/></a>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="https://x.com/jorcelinojunior" target="_blank"><img src="https://raw.githubusercontent.com/jorcelinojunior/cursor-setup-wizard/main/images/x.png" alt="X - Twitter" width="50"/></a>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="https://www.linkedin.com/in/jorcelinojunior" target="_blank"><img src="https://raw.githubusercontent.com/jorcelinojunior/cursor-setup-wizard/main/images/linkedin.png" alt="LinkedIn" width="50"/></a>
</p>

<p>&nbsp;<br/>&nbsp;</p>