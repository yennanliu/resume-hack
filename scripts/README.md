# Scripts Directory

Collection of automation scripts for resume generation and PDF conversion.

## Available Scripts

### 1. `convert_to_pdf.sh`
**Purpose**: Automated HTML to PDF conversion using multiple methods

**Usage**:
```bash
cd ~/resume-hack/ws
../scripts/convert_to_pdf.sh
```

**Features**:
- Auto-detects available conversion tools (wkhtmltopdf, Chrome)
- Falls back to manual browser conversion with instructions
- Opens generated PDF automatically
- Provides file size and page count

**Methods Tried (in order)**:
1. wkhtmltopdf (if installed)
2. Chrome headless (if installed)
3. Manual browser conversion (fallback)

**Output**: `xxx_SoftwareEngineer.pdf` in current directory

---

### 2. `convert.js`
**Purpose**: Node.js-based PDF conversion with Safari automation

**Usage**:
```bash
cd ~/resume-hack/ws
node ../scripts/convert.js
```

**Requirements**:
- Node.js installed
- Safari browser (macOS)

**Features**:
- Uses AppleScript to automate Safari for PDF printing
- Handles file opening and save dialog automation
- Falls back to manual instructions if automation fails

**Output**: `xxx.pdf`

---

### 3. `local-test.sh`
**Purpose**: Local testing suite for resume plugin validation

**Usage**:
```bash
./scripts/local-test.sh
```

**Features**:
- Validates plugin structure
- Checks SKILL.md files
- Verifies template integrity
- Runs syntax checks

**Output**: Test results and validation report

---

## Quick Commands

### Convert HTML to PDF (Automatic)
```bash
# Using Chrome headless (recommended)
cd ~/resume-hack/ws
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  --headless --disable-gpu --print-to-pdf="xxx.pdf" \
  "file://$(pwd)/xxx.html"
```

### Convert with Shell Script
```bash
cd ~/resume-hack/ws
../scripts/convert_to_pdf.sh
```

### Convert with Node.js
```bash
cd ~/resume-hack/ws
node ../scripts/convert.js
```

---

## Installation Requirements

### For Automatic Conversion

**Option 1: Chrome (Recommended)**
- Chrome is already installed on your system
- No additional setup needed
- Use headless command above

**Option 2: wkhtmltopdf**
```bash
brew install wkhtmltopdf
```

**Option 3: Node.js + Puppeteer**
```bash
npm install -g puppeteer
```

---

## Troubleshooting

### Chrome headless fails
- Ensure Chrome is installed at `/Applications/Google Chrome.app/`
- Check file path is absolute (not relative)
- Verify HTML file exists

### wkhtmltopdf not found
```bash
# Install via Homebrew
brew install wkhtmltopdf

# Verify installation
which wkhtmltopdf
```

### Node.js script fails
- Ensure Node.js is installed: `node --version`
- Check Safari permissions (System Preferences → Security)
- Try running with `sudo` if permission denied

### PDF missing colors
- Ensure "Background graphics" is enabled in print settings
- Use Chrome headless instead (preserves colors automatically)

---

## File Locations

After conversion, PDFs are created in the working directory:

```
ws/
├── xxx_SoftwareEngineer.pdf    ← Generated PDF (1-page)
├── xxx_Resume_1Page.html       ← Source HTML (1-page)
└── xxx_Resume.html             ← Source HTML (2-page)
```

Scripts are located in:
```
scripts/
├── convert_to_pdf.sh    ← Shell script converter
├── convert.js           ← Node.js converter
├── local-test.sh        ← Plugin validation
└── README.md            ← This file
```

---

## Adding New Scripts

To add a new script:

1. Create script in this directory
2. Make it executable: `chmod +x script_name.sh`
3. Document it in this README
4. Test it: `./scripts/script_name.sh`

---

## Best Practices

### For Shell Scripts:
- Use `#!/bin/bash` shebang
- Add error handling
- Provide clear output messages
- Make executable with `chmod +x`

### For Node.js Scripts:
- Use `#!/usr/bin/env node` shebang
- Check for required dependencies
- Provide helpful error messages
- Handle file paths correctly

---

## Support

For issues with scripts:
1. Check this README for troubleshooting
2. Verify requirements are installed
3. Run with verbose output for debugging
4. Check file permissions

---

## Quick Reference

| Task | Command |
|------|---------|
| Convert to PDF (auto) | `cd ws && ../scripts/convert_to_pdf.sh` |
| Convert with Node | `cd ws && node ../scripts/convert.js` |
| Validate plugin | `./scripts/local-test.sh` |
| Make script executable | `chmod +x scripts/script_name.sh` |
| Test Chrome headless | See "Quick Commands" above |

---

**Last Updated**: 2024-02-28
**Scripts Version**: 1.0
