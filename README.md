# 🚀 Free Claude Code - AI Coding Assistant

![Version](https://img.shields.io/badge/version-1.0.0-green.svg)
![Platform](https://img.shields.io/badge/platform-Windows-blue.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)

A powerful batch script that provides free access to multiple AI coding models through Claude Code interface, running via Ollama.

## ✨ Features

- **Multiple AI Models** - Choose from 4 different AI models:
  - 🤖 Gemma4
  - 🏆 MiniMax-m2.5 (Best)
  - 🚀 DeepSeek-v4-flash
  - 💪 Nemotron-3-Super

- **Fullscreen Mode** - Immersive coding experience
- **Automatic Installation** - Auto-installs Ollama and Claude if missing
- **Administrator Rights** - Proper privilege handling
- **User-Friendly Menu** - Simple numbered selection interface

## 📋 Prerequisites

- Windows Operating System
- Internet connection for initial setup
- PowerShell (comes pre-installed on Windows)

## 🔧 Installation

### Automatic Installation

1. Download the `free_claude_code.bat` file
2. Run it as Administrator (automatically requested)
3. The script will check for required dependencies:
   - **Ollama** - Will prompt to install if missing
   - **Claude** - Will prompt to install if missing

### Manual Installation

If automatic installation fails:

#### Install Ollama:
```powershell
irm https://ollama.com/install.ps1 | iex
```

#### Install Claude:
```powershell
irm https://claude.ai/install.ps1 | iex
```

#### Manual PATH Configuration for Claude:
After installing Claude, add these paths to your System PATH:
- `C:\Users\%USERNAME%\.local\bin`
- `C:\Users\%USERNAME%\.claude`

**Steps to add to PATH:**
1. Search Windows for "System Environment Variables"
2. Click "Environment Variables..."
3. Select "Path" under System variables and click Edit
4. Click New and add the above paths
5. Save and restart your terminal

## 🎮 Usage

1. **Run as Administrator** - Right-click the `.bat` file and select "Run as Administrator" (or let the script auto-request it)

2. **Select Your Model** from the menu:
   ```
   ================================
         Claude Code Menu
   ================================
     --Select Your Provider--

       1. Gemma4
       2. MiniMax-m2.5 (Best)
       3. DeepSeek-v4-flash
       4. Nemotron-3-Super
       5. Exit
   ```

3. **Wait for the model to load** - The script shows loading animation

4. **Start coding** with your selected AI model!

5. **Exit Claude** by pressing `Ctrl+C` (twice) or closing the window

## 🎯 Model Comparison

| Model | Performance | Use Case |
|-------|-------------|----------|
| **MiniMax-m2.5** | ⭐⭐⭐⭐⭐ Best | General coding, complex tasks |
| **DeepSeek-v4-flash** | ⭐⭐⭐⭐ Very Fast | Quick responses, simple tasks |
| **Gemma4** | ⭐⭐⭐ Good | Balanced performance |
| **Nemotron-3-Super** | ⭐⭐⭐ Good | Specialized tasks |

## 🛠️ Technical Details

### How It Works
- The script requests admin privileges for proper execution
- Uses `ollama launch claude` command with model-specific flags
- Creates a fullscreen terminal environment
- Handles errors and provides user feedback

### Commands Used
```batch
ollama launch claude --model [model-name]:cloud
```

### Window Configuration
- Menu mode: 36x14 characters
- Fullscreen mode: Maximized window with blue/cyan color scheme

## ❗ Troubleshooting

### Common Issues

**"Ollama is not installed"**
- Select 'Y' to auto-install, or download from [ollama.com](https://ollama.com)

**"Claude is not installed"**
- Install manually and configure PATH as shown above
- Restart terminal after PATH changes

**"Command not found" after installation**
- Verify PATH variables are set correctly
- Restart Command Prompt/PowerShell

**Model fails to load**
- Ensure you have sufficient RAM (8GB+ recommended)
- Check if Ollama service is running
- Try a different model

### Getting Help
- Check Ollama status: `ollama list`
- Verify Claude installation: `where claude`
- Run script in debug mode by adding `pause` commands

## 🔒 Security Notes

- The script requests administrator privileges for proper functionality
- Always review batch scripts before running with admin rights
- The script is open source - inspect the code if concerned

## ⚠️ Internet Required
This script requires an active internet connection because it uses cloud-based model versions:

- gemma4:31b-cloud
- minimax-m2.5:cloud
- deepseek-v4-flash:cloud
- nemotron-3-super:cloud

## 💡 Tips & Tricks

1. **Keyboard Shortcuts:**
   - `Ctrl+C` (twice) - Exit Claude session
   - Any key - Return to menu after session ends

2. **Performance Optimization:**
   - Close unnecessary applications when running larger models
   - Use "flash" models for faster responses
   - Keep Ollama updated for best performance

3. **Model Selection:**
   - Choose MiniMax-m2.5 for complex code generation
   - Use DeepSeek-v4-flash for quick fixes and simple tasks

## 🤝 Contributing

Feel free to:
- Report bugs
- Suggest new models
- Improve the script
- Submit pull requests

## 📜 License

MIT License - Free for personal and commercial use

## ⚠️ Disclaimer

This script is for educational purposes. Ensure you comply with the terms of service for each AI model used. 

---

## 🚀 Quick Start

```batch
# Download and run
git clone https://github.com/dallenshelly/free-claude-code.git
claude code.bat
```

**Enjoy your free AI coding assistant!** 🎉
