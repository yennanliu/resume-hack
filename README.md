# Resume Hack - Claude Code Plugin

[![Validate Plugin](https://github.com/yennanliu/resume-hack/actions/workflows/validate.yml/badge.svg)](https://github.com/yennanliu/resume-hack/actions/workflows/validate.yml)
[![Deploy to GitHub Pages](https://github.com/yennanliu/resume-hack/actions/workflows/deploy.yml/badge.svg)](https://github.com/yennanliu/resume-hack/actions/workflows/deploy.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A comprehensive Claude Code plugin for intelligent resume optimization, tailored to job descriptions with professional insights from hiring managers and HR perspectives.

**📚 [View Documentation Site](https://yennanliu.github.io/resume-hack/)** | **🚀 [Latest Release](https://github.com/yennanliu/resume-hack/releases)**

## Features

- **Auto-Resume Optimization** - Automatically tailor resumes to specific job descriptions
- **Multi-Format Support** - 1-page resumes, CVs, portfolios, cover letters
- **Professional PDF Design** - Transform plain text to beautifully designed PDF resumes
- **ATS Simulation** - Test against real company systems (FAANG, Enterprise, Startup)
- **Professional Analysis** - Get insights from hiring manager and HR points of view
- **ATS Optimization** - Ensure your resume passes Applicant Tracking Systems
- **Industry-Specific Templates** - Tailored approaches for different industries
- **Skills Gap Analysis** - Identify missing skills and suggest improvements

## Installation

### Quick Install (Recommended)
```bash
# Download and run installer from latest release
curl -fsSL https://github.com/yennanliu/resume-hack/releases/latest/download/install.sh | bash
```

### Manual Install
```bash
# Clone the repository
git clone https://github.com/yennanliu/resume-hack.git

# Copy to Claude skills directory
cp -r resume-hack ~/.claude/skills/
```

### From Release
```bash
# Download latest release
wget https://github.com/yennanliu/resume-hack/releases/latest/download/resume-hack-latest.tar.gz
tar -xzf resume-hack-latest.tar.gz
cp -r resume-hack ~/.claude/skills/
```

## Usage

Invoke skills using the `/resume-hack:` prefix:

```bash
# Optimize resume for a job description
/resume-hack:optimize

# Analyze from hiring manager perspective
/resume-hack:hiring-manager-review

# Analyze from HR perspective
/resume-hack:hr-review

# Generate cover letter
/resume-hack:cover-letter

# Create portfolio summary
/resume-hack:portfolio

# Design professional PDF resume
/resume-hack:design

# Simulate ATS systems (FAANG, Enterprise, Startup)
/resume-hack:ats-simulator
```

## Skills

### Core Skills
- **optimize** - Auto-tailor resume to job description with ATS optimization
- **hiring-manager-review** - Technical and culture-fit analysis
- **hr-review** - Compliance, screening, and first-impression analysis
- **ats-check** - Applicant Tracking System compatibility check
- **ats-simulator** - Simulate real ATS systems (FAANG, Enterprise, Startup) with detailed feedback

### Document Generation
- **cover-letter** - Generate personalized cover letters
- **portfolio** - Create portfolio summaries and project highlights
- **cv** - Generate academic/research CVs
- **one-pager** - Optimize for single-page format
- **design** - Transform plain text to professional PDF resume with HTML/CSS

### Analysis Tools
- **skills-gap** - Identify skills gaps vs job requirements
- **keyword-match** - Analyze keyword alignment with JD
- **impact-amplifier** - Strengthen achievement statements

## Examples

### Optimize Resume for Job
```
/resume-hack:optimize

Then provide:
- Your current resume (text or file)
- Target job description
- Desired position level
```

### Get Professional Feedback
```
/resume-hack:hiring-manager-review

Provides technical depth, culture fit, and red flag analysis
```

### Simulate ATS Systems
```
/resume-hack:ats-simulator

Test your resume against:
- FAANG companies (Google, Meta, Amazon, Apple, Netflix)
- Large enterprises (Workday, Taleo, SAP)
- Tech startups (Greenhouse, Lever)

Get detailed feedback on:
- Parsing success rate (what the ATS actually sees)
- Keyword matching scores
- Company-specific scoring
- Pass/fail predictions
- Specific fixes needed
```

### Design Professional PDF Resume
```
/resume-hack:design

Then provide:
- Your resume content (plain text or existing resume)
- Target industry (tech, finance, creative, etc.)
- Preferred style (modern, traditional, minimal, bold)

Outputs:
- Complete HTML/CSS resume
- 5 professional design styles to choose from
- Instructions to convert to PDF
- ATS-compatible and print-optimized
```

## Plugin Structure

```
resume-hack/
├── README.md
├── SKILL.md                      # Main skill entry point
├── skills/
│   ├── optimize/
│   │   └── SKILL.md
│   ├── hiring-manager-review/
│   │   └── SKILL.md
│   ├── hr-review/
│   │   └── SKILL.md
│   ├── ats-check/
│   │   └── SKILL.md
│   ├── cover-letter/
│   │   └── SKILL.md
│   ├── portfolio/
│   │   └── SKILL.md
│   ├── cv/
│   │   └── SKILL.md
│   ├── one-pager/
│   │   └── SKILL.md
│   ├── skills-gap/
│   │   └── SKILL.md
│   ├── keyword-match/
│   │   └── SKILL.md
│   ├── impact-amplifier/
│   │   └── SKILL.md
│   ├── design/
│   │   └── SKILL.md
│   └── ats-simulator/
│       └── SKILL.md
├── templates/
│   ├── RESUME_TEMPLATES.md
│   ├── HTML_TEMPLATES.md
│   ├── CV_TEMPLATES.md
│   ├── COVER_LETTER_TEMPLATES.md
│   └── PORTFOLIO_TEMPLATES.md
└── guidelines/
    ├── HR_PERSPECTIVE.md
    ├── HIRING_MANAGER_PERSPECTIVE.md
    ├── ATS_GUIDELINES.md
    └── INDUSTRY_SPECIFIC.md
```

## Development

### Local Testing
Run the local test suite before committing:
```bash
./scripts/local-test.sh
```

### CI/CD Pipeline
- **Validation**: Automatic syntax and structure validation on every push
- **Dry Run**: Simulates installation and tests all features on PRs
- **Release**: Automated release creation with version tagging
- **Deployment**: Auto-deploy documentation site to GitHub Pages

### Testing Workflows
- `validate.yml` - Runs on every push (syntax, structure, ATS checks)
- `dry-run.yml` - Runs on PRs (installation simulation, usage tests)
- `release.yml` - Runs on version tags (creates GitHub releases)
- `deploy.yml` - Deploys documentation site

## Releases

### Creating a Release
```bash
# Tag a new version
git tag v1.0.0
git push origin v1.0.0

# CI/CD automatically:
# - Validates the plugin
# - Creates release packages
# - Generates release notes
# - Publishes to GitHub Releases
```

### Release Artifacts
Each release includes:
- `resume-hack-vX.X.X.tar.gz` - Plugin package (tar)
- `resume-hack-vX.X.X.zip` - Plugin package (zip)
- `plugin.json` - Plugin manifest
- `install.sh` - Quick installer script

## License

MIT License - See LICENSE file for details

## Contributing

Contributions welcome! Please:
1. Run `./scripts/local-test.sh` before submitting
2. Ensure all CI checks pass
3. Submit PRs with clear descriptions
4. Report issues on GitHub

## Support

- 📚 [Documentation](https://yennanliu.github.io/resume-hack/)
- 🐛 [Issues](https://github.com/yennanliu/resume-hack/issues)
- 💬 [Discussions](https://github.com/yennanliu/resume-hack/discussions)
- 🚀 [Releases](https://github.com/yennanliu/resume-hack/releases)
