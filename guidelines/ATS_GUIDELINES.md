# ATS Guidelines - Applicant Tracking System Best Practices

## Understanding ATS Systems

### What is an ATS?

**Applicant Tracking System** = Software that:
1. **Parses** resumes (extracts text and data)
2. **Categorizes** information (name, skills, experience, education)
3. **Ranks** candidates (based on keyword matching and criteria)
4. **Filters** resumes (presents top matches to recruiters)

### Common ATS Platforms

- **Workday** - Many Fortune 500 companies
- **Taleo** (Oracle) - Large enterprises, government
- **Greenhouse** - Tech companies, startups
- **Lever** - Tech-focused companies
- **iCIMS** - Healthcare, retail, mid-market
- **BambooHR** - Small to mid-size companies
- **SmartRecruiters** - Growing companies
- **Jobvite** - Mid-market and enterprise

### How ATS Ranks Resumes

**Scoring Factors**:
1. **Keyword Match** (40-50% of score)
   - Exact matches to job requirements
   - Frequency of keyword appearances
   - Placement (headline, recent experience weighted higher)

2. **Experience Match** (20-30%)
   - Years of experience
   - Job titles relevance
   - Recency of experience

3. **Education & Credentials** (10-20%)
   - Required degree
   - Certifications
   - Training

4. **Format Compatibility** (10-20%)
   - Can the system parse it correctly?
   - Are sections identified properly?
   - Is data extractable?

5. **Completeness** (5-10%)
   - All required sections present
   - No missing critical information

## ATS-Friendly Formatting Rules

### File Format

✅ **BEST CHOICE**: .docx (Microsoft Word)
- Highest compatibility
- Best parsing accuracy
- Most ATS systems optimized for this

✅ **GOOD**: .pdf (text-based)
- Usually works
- Check that text is selectable
- Some older ATS struggle with PDF

⚠️ **AVOID**: .doc (old Word format)
- Outdated but usually works
- May have formatting issues

❌ **NEVER**: .pages, .jpg, .png, scanned PDF
- Won't parse correctly
- Data won't be extracted
- Automatic rejection

### Fonts

✅ **ATS-Safe Fonts**:
- Arial
- Calibri
- Helvetica
- Times New Roman
- Georgia
- Garamond

**Font Size**:
- Body: 10-12pt (minimum 10pt)
- Name: 14-18pt
- Section headers: 12-14pt

❌ **Avoid**:
- Script or decorative fonts
- Very small fonts (<10pt)
- Unusual fonts that might not render

### Layout and Structure

✅ **Use Single Column**:
```
[Contact Info]
[Section 1]
[Section 2]
```

❌ **Avoid Multi-Column**:
```
[Column 1] | [Column 2]
```
**Why**: ATS reads left-to-right, may scramble content

✅ **Clear Section Headers**:
- EXPERIENCE
- EDUCATION
- SKILLS
- CERTIFICATIONS

❌ **Avoid Creative Headers**:
- "My Journey"
- "What I've Done"
- Icons instead of text
- Graphics or images as headers

### Contact Information

✅ **ATS-Friendly**:
```
John Doe
john.doe@email.com | (555) 123-4567
linkedin.com/in/johndoe | San Francisco, CA
```

**Placement**: In document body (not header/footer)

❌ **ATS-Hostile**:
- Contact info in header/footer
- Complex tables for contact info
- Images or graphics
- Linked text boxes

### Dates

✅ **Consistent Format**:
- MM/YYYY: 01/2020 - 12/2023
- Month YYYY: January 2020 - December 2023
- MMM YYYY: Jan 2020 - Dec 2023

**Pick one and use consistently**

✅ **For Current Roles**:
- "Present" (preferred)
- "Current"
**Be consistent** throughout resume

### Section Headers

✅ **Standard Headers ATS Recognizes**:
- EXPERIENCE / WORK EXPERIENCE / PROFESSIONAL EXPERIENCE
- EDUCATION
- SKILLS / TECHNICAL SKILLS / CORE COMPETENCIES
- SUMMARY / PROFESSIONAL SUMMARY / PROFILE
- CERTIFICATIONS / CREDENTIALS
- PROJECTS (if separate section)

❌ **ATS May Not Recognize**:
- WHAT I'VE DONE
- MY EXPERTISE
- WHERE I'VE BEEN
- Icons or symbols as headers

## ATS-Hostile Elements to Avoid

### ❌ Tables

**Problem**: ATS often can't parse tables correctly

**Instead of**:
| Skill | Years |
|-------|-------|
| Python | 5 |
| Java | 3 |

**Use**:
```
Skills:
Python (5 years), Java (3 years)
```

### ❌ Text Boxes

**Problem**: Content in text boxes often ignored entirely

**Instead**: Use regular body text with clear structure

### ❌ Headers and Footers

**Problem**: Content often not parsed or parsed incorrectly

**Critical**: Never put contact info or important data in headers/footers

### ❌ Images and Graphics

**Problem**: ATS can't read images

**This includes**:
- Photos (headshot)
- Logos
- Charts and graphs
- Skill ratings (filled circles, stars)
- Infographic-style resumes

### ❌ Columns

**Problem**: Can scramble text order

**Example Issue**:
```
Work Experience    Education
Job 1              Degree 1
Job 2              Degree 2
```

**ATS might read as**:
"Work Experience Education Job 1 Degree 1 Job 2 Degree 2"

**Instead**: Use single-column layout

### ❌ Complex Formatting

**Avoid**:
- Borders and shading
- Fancy bullet styles
- Custom symbols
- Underlining (except section headers if minimal)
- Colored text
- Hyperlinked text boxes

**Use Instead**:
- Simple bullet points (•, -, *)
- Black text on white background
- Standard formatting

## Keyword Optimization for ATS

### Keyword Extraction

**From Job Description, Extract**:
1. **Required Skills** (hard skills)
   - Programming languages
   - Tools and platforms
   - Methodologies
   - Technical concepts

2. **Soft Skills**
   - Leadership, Communication
   - Problem-solving, Collaboration

3. **Credentials**
   - Degrees required
   - Certifications needed

4. **Experience Markers**
   - Years of experience
   - Job titles
   - Industry experience

### Keyword Placement Strategy

**Priority 1: Professional Summary**
- Include 8-12 critical keywords
- Natural integration
- Front-load most important

**Priority 2: Skills Section**
- List all relevant keywords
- Exact matches to job description
- Categorized for readability

**Priority 3: Experience Section**
- Integrate keywords in bullets
- Show keywords in action
- Recent experience weighted higher

**Priority 4: Education/Certifications**
- Match degree requirements
- List relevant certifications
- Include acronyms and spelled-out versions

### Keyword Density

**Optimal Frequency**:
- **Critical Keywords**: 3-5 times
- **Important Keywords**: 2-3 times
- **Supplementary Keywords**: 1-2 times

**Example**:
Job requires "Machine Learning"

✅ **Good**:
- Professional Summary: "...experience in machine learning..."
- Experience: "Built machine learning model..."
- Experience: "Applied ML techniques..."
- Skills: "Machine Learning (ML), Python, TensorFlow"

**Total**: 4 mentions (perfect)

❌ **Keyword Stuffing** (10+ mentions):
- Looks unnatural
- ATS may penalize
- Human reviewers will notice

### Acronyms and Variations

**Strategy**: Include Both

**Example**:
```
✅ "Continuous Integration/Continuous Deployment (CI/CD)"
✅ "Machine Learning (ML)"
✅ "Search Engine Optimization (SEO)"
```

**Why**: Some ATS search for acronym, some for full term

**Variations to Include**:
- JavaScript, JS, ES6
- Artificial Intelligence, AI
- Customer Relationship Management, CRM

## ATS Section Requirements

### Contact Information
**Must Include**:
- [ ] Full name
- [ ] Phone number (formatted consistently)
- [ ] Professional email
- [ ] Location (City, State minimum)
- [ ] LinkedIn URL (optional but recommended)

**Format**: Plain text, in document body

### Professional Summary (Optional)
**If included**:
- [ ] 2-3 sentences or 3-4 short bullet points
- [ ] Keyword-rich
- [ ] Relevant to target role
- [ ] Quantified achievements if possible

### Work Experience
**Required Elements per Role**:
- [ ] Job title
- [ ] Company name
- [ ] Location (City, State)
- [ ] Dates (start - end)
- [ ] 3-5 bullet points with achievements

**Format**:
```
Software Engineer | Google | Mountain View, CA | Jan 2020 - Present
• [Achievement with metric]
• [Achievement with metric]
• [Achievement with metric]
```

### Skills
**Best Format**:
```
SKILLS
Technical: Skill1, Skill2, Skill3
Tools: Tool1, Tool2, Tool3
Methodologies: Method1, Method2
```

**Or Categorized**:
```
TECHNICAL SKILLS
Languages: Python, Java, JavaScript
Frameworks: React, Django, Spring Boot
Cloud: AWS (EC2, S3, Lambda), Docker, Kubernetes
```

### Education
**Required Elements**:
- [ ] Degree type and major
- [ ] Institution name
- [ ] Graduation date (or expected)
- [ ] GPA (if >3.5 and recent)

**Format**:
```
Bachelor of Science in Computer Science
University of California, Berkeley | Graduated May 2020 | GPA: 3.8
```

### Certifications (If Applicable)
**Format**:
```
CERTIFICATIONS
AWS Certified Solutions Architect | Amazon Web Services | 2023
PMP | Project Management Institute | 2022
```

## ATS Testing Methods

### Test 1: Copy-Paste Test

**Steps**:
1. Open your resume PDF/DOCX
2. Select all text (Ctrl+A / Cmd+A)
3. Copy and paste into Notepad/TextEdit

**Check**:
- Is text in correct order?
- Are sections recognizable?
- Is formatting preserved reasonably?
- No garbage characters?

**If fails**: Formatting too complex for ATS

### Test 2: Text Selection Test (PDF)

**Steps**:
1. Open PDF
2. Try to select and copy text

**Check**:
- Can you select all text?
- Does it copy correctly?

**If fails**: PDF is image-based (scanned), won't parse

### Test 3: Free ATS Scanners

**Tools**:
- **Jobscan.co** - Compare resume to job description
- **Resume Worded** - ATS compatibility check
- **VMock** - Format and content analysis
- **TopResume** - Free ATS review

**What they check**:
- Format compatibility
- Keyword matching
- Section recognition
- Overall ATS score

### Test 4: File Size Check

**Ideal**: <1MB (preferably <500KB)

**If larger**:
- May be image-heavy
- Overly complex formatting
- Could cause upload/parsing issues

## ATS-Optimized Resume Checklist

### Format Checklist
- [ ] File format: .docx or text-based PDF
- [ ] Font: Standard (Arial, Calibri, Times New Roman)
- [ ] Font size: 10-12pt body, larger for name/headers
- [ ] Margins: 0.5-1.0 inch
- [ ] Single-column layout
- [ ] No tables, text boxes, headers/footers
- [ ] No images, graphics, photos
- [ ] Simple bullet points (•, -, *)
- [ ] Black text on white background

### Content Checklist
- [ ] Standard section headers
- [ ] Contact info in document body
- [ ] Dates in consistent format
- [ ] Keywords from job description included
- [ ] Acronyms spelled out first usage
- [ ] Each role has: title, company, dates, bullets
- [ ] Education includes: degree, school, date
- [ ] Skills section with categorized keywords

### Keyword Checklist
- [ ] All required skills included
- [ ] Critical keywords appear 3-5 times
- [ ] Keywords integrated naturally (not stuffed)
- [ ] Both acronyms and full terms included
- [ ] Skills section comprehensive
- [ ] Professional summary keyword-rich (if included)
- [ ] Industry terminology correct

### Technical Checklist
- [ ] Copy-paste test passed
- [ ] Text selectable in PDF
- [ ] File size <1MB
- [ ] Filename professional: FirstName_LastName_Resume.pdf
- [ ] No track changes or comments (if DOCX)
- [ ] Document properties clean (author name appropriate)

## Common ATS Mistakes and Fixes

### Mistake 1: Creative Design

❌ **Problem**:
- Multi-column layout
- Sidebar with skills
- Graphic elements
- Colored sections

✅ **Fix**:
- Single column
- Text-based
- Simple formatting
- Black and white

### Mistake 2: Headers/Footers with Critical Info

❌ **Problem**:
- Name in header
- Contact info in footer
- Page numbers blocking content

✅ **Fix**:
- All contact info in body
- Remove headers/footers
- No page numbers needed (single doc)

### Mistake 3: Keyword Stuffing

❌ **Problem**:
```
Skills: Python Python Python JavaScript Java Python React
```

✅ **Fix**:
```
Languages: Python, JavaScript, Java
Frameworks: React, Django, Spring
```

### Mistake 4: No Keywords

❌ **Problem**:
Generic bullets with no specific technologies

✅ **Fix**:
Integrate keywords naturally: "Built API using Python and Flask..."

### Mistake 5: Tables for Experience

❌ **Problem**:
| Company | Role | Dates |
| Experience details in table cells |

✅ **Fix**:
```
Company | Role | Dates
• Bullet 1
• Bullet 2
```

### Mistake 6: Skills in Text Boxes

❌ **Problem**:
[Text Box: Python, Java, JavaScript]

✅ **Fix**:
```
SKILLS
Languages: Python, Java, JavaScript
```

### Mistake 7: Non-Standard Section Names

❌ **Problem**:
- "My Journey" (instead of Experience)
- "What I Know" (instead of Skills)
- "Where I Learned" (instead of Education)

✅ **Fix**:
- EXPERIENCE or PROFESSIONAL EXPERIENCE
- SKILLS or TECHNICAL SKILLS
- EDUCATION

### Mistake 8: Vague Job Titles in Experience

❌ **Problem**:
"Team Member | Company X"

✅ **Fix**:
"Software Engineer | Company X"

**Why**: ATS looks for title matches

## ATS Optimization by Industry

### Tech/Engineering

**Critical ATS Elements**:
- Technical skills section (comprehensive)
- Programming languages and frameworks
- Tools and platforms (AWS, Docker, etc.)
- Methodologies (Agile, CI/CD)
- Project descriptions with tech stack

**Keywords to Include**:
- Specific languages: Python, Java, JavaScript
- Frameworks: React, Django, Spring
- Cloud: AWS, Azure, GCP
- DevOps: Docker, Kubernetes, Jenkins
- Databases: PostgreSQL, MongoDB, Redis

### Business/Management

**Critical ATS Elements**:
- Leadership and management keywords
- Business impact metrics
- Soft skills (Leadership, Communication)
- Industry-specific terminology
- ROI and efficiency improvements

**Keywords to Include**:
- Leadership, Team Management
- Strategic Planning, Roadmap
- Stakeholder Management
- Project Management, Agile
- P&L, Budget, ROI

### Healthcare

**Critical ATS Elements**:
- Licenses and certifications (critical!)
- Clinical skills and procedures
- Healthcare software (Epic, Cerner)
- Compliance and regulations (HIPAA)
- Patient care metrics

**Keywords to Include**:
- Specific licenses (RN, MD, PA)
- EMR systems: Epic, Cerner, Allscripts
- Compliance: HIPAA, OSHA
- Clinical skills specific to role
- Certifications: BLS, ACLS, etc.

### Finance

**Critical ATS Elements**:
- Certifications (CPA, CFA, CFP)
- Financial software (QuickBooks, SAP)
- Compliance and regulations
- Analysis and reporting skills
- Financial metrics and KPIs

**Keywords to Include**:
- Certifications: CPA, CFA, Series 7
- Software: QuickBooks, SAP, Oracle
- Analysis: Financial Modeling, Forecasting
- Compliance: SOX, GAAP, IFRS
- Skills: Excel, SQL, Tableau

## ATS Success Strategies

### Strategy 1: Tailor for Each Application

**Why**: Each job has different keywords

**How**:
1. Extract keywords from job description (5 min)
2. Update professional summary (3 min)
3. Adjust 2-3 bullets to include keywords (5 min)
4. Update skills section (2 min)
5. Save as JobTitle_Company_YourName.docx

**Time**: 15 minutes per application
**Impact**: 2-3x higher response rate

### Strategy 2: Maintain Two Versions

**Version 1: ATS-Optimized** (.docx)
- Maximum compatibility
- Keywords optimized
- Simple formatting
- Submit through online portals

**Version 2: Human-Optimized** (.pdf)
- Can be slightly more visual
- Better typography
- Formatted for printing
- For networking, email forwards

### Strategy 3: Keyword Bank

**Create a master list** of your skills:
- Technical skills (with variations)
- Soft skills
- Tools and platforms
- Methodologies
- Certifications

**Use** to quickly tailor resumes:
Copy relevant keywords for each application

### Strategy 4: Track Results

**Before ATS Optimization**:
- Applications sent: [X]
- Responses: [Y]
- Response rate: [%]

**After ATS Optimization**:
- Applications sent: [X]
- Responses: [Y]
- Response rate: [%]

**Typical improvement**: 30-50% increase

## The Truth About ATS

### Myths vs Reality

**Myth**: ATS automatically rejects 75% of resumes
**Reality**: ATS ranks resumes, humans make rejection decisions

**Myth**: You must have 100% keyword match
**Reality**: 70-80% match gets you in consideration

**Myth**: ATS can't read PDF
**Reality**: Most modern ATS can read text-based PDF fine

**Myth**: You need to stuff white text keywords
**Reality**: This may get you caught and banned

**Myth**: ATS is impossible to beat
**Reality**: Following basic guidelines gets you through

### What ATS Can and Can't Do

**ATS CAN**:
- Parse text from standard formats
- Extract contact information
- Identify section headers
- Match keywords
- Rank based on criteria
- Track application status

**ATS CAN'T**:
- Understand context or nuance
- Appreciate creativity
- Read your mind
- Recognize non-standard formats reliably
- Make hiring decisions (humans do)
- Understand implied skills

## Final ATS Wisdom

### The 80/20 Rule

**80% of ATS success** comes from:
1. Using .docx format
2. Standard section headers
3. Including relevant keywords
4. Simple, single-column layout
5. No tables, images, or text boxes

**20% of effort** for marginal gains:
- Perfect keyword density
- Exact formatting details
- Multiple file formats
- Extensive testing

### Balance ATS and Human Needs

**Remember**:
- ATS gets you to human review
- Humans make the hiring decision
- Optimize for ATS, but write for humans
- Readability still matters
- Content is ultimately king

### The Goal

**Primary Goal**: Pass ATS screening

**Secondary Goal**: Impress human reviewer

**Strategy**: ATS-friendly format + compelling content

---

**Bottom Line**: ATS is a gatekeeper, not the decision-maker. Format correctly to get through the gate, then let your achievements shine to win the job.
