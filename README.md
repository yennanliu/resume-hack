# Resume Hack - Claude Code Plugin

A comprehensive Claude Code plugin for intelligent resume optimization, tailored to job descriptions with professional insights from hiring managers and HR perspectives.

**📚 [View Documentation Site](https://yennanliu.github.io/resume-hack/)**

## Features

- **Auto-Resume Optimization** - Automatically tailor resumes to specific job descriptions
- **Multi-Format Support** - 1-page resumes, CVs, portfolios, cover letters
- **Professional PDF Design** - Transform plain text to beautifully designed PDF resumes
- **Professional Analysis** - Get insights from hiring manager and HR points of view
- **ATS Optimization** - Ensure your resume passes Applicant Tracking Systems
- **Industry-Specific Templates** - Tailored approaches for different industries
- **Skills Gap Analysis** - Identify missing skills and suggest improvements

## Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/resume-hack.git

# Copy to Claude skills directory
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
```

## Skills

### Core Skills
- **optimize** - Auto-tailor resume to job description with ATS optimization
- **hiring-manager-review** - Technical and culture-fit analysis
- **hr-review** - Compliance, screening, and first-impression analysis
- **ats-check** - Applicant Tracking System compatibility check

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
│   └── design/
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

## License

MIT License - See LICENSE file for details

## Contributing

Contributions welcome! Please submit PRs or issues on GitHub.
