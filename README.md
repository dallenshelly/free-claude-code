# Free Claude Code

A Windows batch script that provides free access to multiple AI coding models through Claude Code interface via Ollama.

## ⚠️ Internet Required

**This script requires an active internet connection** because it uses cloud-based model versions:
- gemma4:31b-cloud
- minimax-m2.5:cloud
- deepseek-v4-flash:cloud
- nemotron-3-super:cloud

## What it does

- Requests administrator privileges automatically
- Checks if Ollama is installed (offers to install if missing)
- Checks if Claude is installed (offers to install if missing)
- Provides a menu to select from 4 different AI models
- Launches selected model in fullscreen mode
- Returns to menu when Claude session ends

## Installation

1. Save the script as `claude.bat`
2. Run as Administrator (script will auto-request if needed)
3. If prompted, install Ollama and/or Claude
4. For Claude: After installation, add these to your System PATH:
   - `C:\Users\%USERNAME%\.local\bin`
   - `C:\Users\%USERNAME%\.claude`

## Usage

Run the script and select a model:

```
1. Gemma4
2. MiniMax-m2.5 (Best)
3. DeepSeek-v4-flash
4. Nemotron-3-Super
5. Exit
```

Press `Ctrl+C` twice to exit Claude and return to menu.

## Requirements

- Windows OS
- Internet connection (for cloud models)
- Administrator privileges

## Note

The script uses cloud-based model tags. Make sure these models are available in your Ollama configuration.
