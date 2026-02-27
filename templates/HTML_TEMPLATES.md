<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>[Your Name] - Resume</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        @media print {
            @page {
                size: A4;
                margin: 0;
            }
            body {
                margin: 0;
                padding: 0;
            }
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
            line-height: 1.5;
            color: #1f2937;
            background: #ffffff;
            padding: 0.6in;
            max-width: 8.5in;
            margin: 0 auto;
        }

        h1 {
            font-size: 36px;
            font-weight: 700;
            color: #111827;
            margin-bottom: 4px;
        }

        .header {
            margin-bottom: 28px;
            padding-bottom: 16px;
            border-bottom: 3px solid #2563eb;
        }

        .title {
            font-size: 15px;
            color: #6b7280;
            font-weight: 500;
            margin-bottom: 10px;
        }

        .contact {
            font-size: 11px;
            color: #6b7280;
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .contact a {
            color: #2563eb;
            text-decoration: none;
        }

        .contact a:hover {
            text-decoration: underline;
        }

        .section {
            margin-bottom: 24px;
        }

        .section-title {
            font-size: 14px;
            font-weight: 700;
            color: #111827;
            text-transform: uppercase;
            letter-spacing: 0.8px;
            margin-bottom: 14px;
            padding-bottom: 6px;
            border-bottom: 2px solid #e5e7eb;
        }

        .experience-item {
            margin-bottom: 18px;
            page-break-inside: avoid;
        }

        .experience-header {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            margin-bottom: 3px;
        }

        .job-title {
            font-size: 14px;
            font-weight: 600;
            color: #1f2937;
        }

        .company {
            font-size: 13px;
            font-weight: 500;
            color: #2563eb;
            margin-top: 2px;
        }

        .date {
            font-size: 11px;
            color: #6b7280;
            white-space: nowrap;
            font-weight: 500;
        }

        .location {
            font-size: 11px;
            color: #9ca3af;
            margin-bottom: 8px;
        }

        ul {
            list-style: none;
            padding-left: 0;
            margin-top: 6px;
        }

        li {
            position: relative;
            padding-left: 18px;
            margin-bottom: 5px;
            font-size: 11px;
            line-height: 1.6;
            color: #374151;
        }

        li:before {
            content: "▸";
            position: absolute;
            left: 0;
            color: #2563eb;
            font-weight: bold;
            font-size: 12px;
        }

        .summary {
            font-size: 11.5px;
            line-height: 1.7;
            color: #374151;
        }

        .skills-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 10px;
        }

        .skill-category {
            margin-bottom: 8px;
        }

        .skill-category strong {
            font-size: 11px;
            color: #1f2937;
            font-weight: 600;
            display: block;
            margin-bottom: 3px;
        }

        .skill-list {
            font-size: 10.5px;
            color: #4b5563;
            line-height: 1.5;
        }

        .education-item {
            margin-bottom: 14px;
        }

        .degree {
            font-size: 13px;
            font-weight: 600;
            color: #1f2937;
        }

        .school {
            font-size: 12px;
            color: #2563eb;
            margin-top: 2px;
        }

        .education-details {
            font-size: 10.5px;
            color: #6b7280;
            margin-top: 2px;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>[Your Full Name]</h1>
        <div class="title">[Your Job Title / Professional Title]</div>
        <div class="contact">
            <span>[email@example.com]</span>
            <span>•</span>
            <span>[(555) 123-4567]</span>
            <span>•</span>
            <a href="https://linkedin.com/in/yourprofile">linkedin.com/in/yourprofile</a>
            <span>•</span>
            <a href="https://github.com/yourusername">github.com/yourusername</a>
            <span>•</span>
            <span>[City, State]</span>
        </div>
    </div>

    <div class="section">
        <div class="section-title">Professional Summary</div>
        <p class="summary">
            [2-3 sentences highlighting your experience, key skills, and major achievements.
            Include years of experience, technical expertise, and quantifiable results.
            Tailor this to match the job description keywords.]
        </p>
    </div>

    <div class="section">
        <div class="section-title">Experience</div>

        <div class="experience-item">
            <div class="experience-header">
                <div>
                    <div class="job-title">[Job Title]</div>
                    <div class="company">[Company Name]</div>
                </div>
                <div class="date">[MM/YYYY - Present]</div>
            </div>
            <div class="location">[City, State]</div>
            <ul>
                <li>[Achievement with quantified result and technologies used, e.g., "Built scalable API using Python and FastAPI, handling 1M+ requests/day with 99.9% uptime"]</li>
                <li>[Technical depth showing architecture or design decisions, e.g., "Architected microservices migration reducing deployment time by 70%"]</li>
                <li>[Business impact with metrics, e.g., "Led team of 5 engineers delivering feature that increased user engagement by 40%"]</li>
            </ul>
        </div>

        <div class="experience-item">
            <div class="experience-header">
                <div>
                    <div class="job-title">[Previous Job Title]</div>
                    <div class="company">[Previous Company Name]</div>
                </div>
                <div class="date">[MM/YYYY - MM/YYYY]</div>
            </div>
            <div class="location">[City, State]</div>
            <ul>
                <li>[Top achievement with metrics]</li>
                <li>[Technical or leadership accomplishment]</li>
                <li>[Business value delivered]</li>
            </ul>
        </div>

        <div class="experience-item">
            <div class="experience-header">
                <div>
                    <div class="job-title">[Earlier Job Title]</div>
                    <div class="company">[Earlier Company Name]</div>
                </div>
                <div class="date">[MM/YYYY - MM/YYYY]</div>
            </div>
            <div class="location">[City, State]</div>
            <ul>
                <li>[Key achievement]</li>
                <li>[Another accomplishment]</li>
            </ul>
        </div>
    </div>

    <div class="section">
        <div class="section-title">Technical Skills</div>
        <div class="skills-grid">
            <div class="skill-category">
                <strong>Languages:</strong>
                <div class="skill-list">Python, JavaScript, TypeScript, Java, Go</div>
            </div>
            <div class="skill-category">
                <strong>Frameworks:</strong>
                <div class="skill-list">React, Node.js, Django, FastAPI, Spring Boot</div>
            </div>
            <div class="skill-category">
                <strong>Cloud & DevOps:</strong>
                <div class="skill-list">AWS (EC2, S3, Lambda), Docker, Kubernetes, Jenkins</div>
            </div>
            <div class="skill-category">
                <strong>Databases:</strong>
                <div class="skill-list">PostgreSQL, MongoDB, Redis, MySQL</div>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="section-title">Education</div>
        <div class="education-item">
            <div class="degree">[Degree] in [Major]</div>
            <div class="school">[University Name]</div>
            <div class="education-details">[Graduation Date] | GPA: [X.X] | [Honors if applicable]</div>
        </div>
    </div>
</body>
</html>
