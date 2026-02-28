#!/usr/bin/env node

const { execSync } = require('child_process');
const fs = require('fs');
const path = require('path');

const htmlFile = path.join(__dirname, 'YenNan_Liu_Resume_1Page.html');
const pdfFile = path.join(__dirname, 'YenNan_Liu_SoftwareEngineer.pdf');

console.log('🎨 Converting HTML to PDF...\n');

// Check if html file exists
if (!fs.existsSync(htmlFile)) {
    console.error('❌ Error: HTML file not found:', htmlFile);
    process.exit(1);
}

// Use AppleScript to automate Safari/Chrome for PDF conversion
const appleScript = `
tell application "Safari"
    activate
    open POSIX file "${htmlFile}"
    delay 2

    tell application "System Events"
        keystroke "p" using command down
        delay 1
        keystroke "p" using {command down, shift down}
        delay 1
        keystroke "g" using {command down, shift down}
        delay 0.5
        keystroke "${pdfFile}"
        delay 0.5
        keystroke return
        delay 1
        keystroke return
        delay 2
    end tell

    close front window
end tell
`;

try {
    // Try using AppleScript
    console.log('📄 Method: Safari automation via AppleScript\n');

    const scriptFile = path.join(__dirname, 'convert_temp.scpt');
    fs.writeFileSync(scriptFile, appleScript);

    execSync(`osascript "${scriptFile}"`, { stdio: 'inherit' });

    fs.unlinkSync(scriptFile);

    if (fs.existsSync(pdfFile)) {
        const stats = fs.statSync(pdfFile);
        const fileSizeKB = (stats.size / 1024).toFixed(2);

        console.log('\n✅ PDF created successfully!');
        console.log(`📁 File: ${pdfFile}`);
        console.log(`📊 Size: ${fileSizeKB} KB\n`);
        console.log('🎯 Next steps:');
        console.log('   1. Open the PDF and verify it looks correct');
        console.log('   2. Check that text is selectable');
        console.log('   3. Verify all content fits on 1 page');
        console.log('   4. Update LinkedIn to match resume');
        console.log('   5. Start applying to FAANG roles!\n');
    } else {
        throw new Error('PDF file was not created');
    }

} catch (error) {
    console.error('\n❌ Safari automation failed. Trying alternative method...\n');

    // Alternative: Just open the HTML file and show manual instructions
    console.log('📖 Manual conversion required:\n');
    console.log('Opening HTML file in browser...\n');

    execSync(`open "${htmlFile}"`);

    console.log('Please follow these steps:');
    console.log('1. Press Cmd+P in your browser');
    console.log('2. Select "Save as PDF"');
    console.log('3. ✅ Enable "Background graphics"');
    console.log('4. Save as: YenNan_Liu_SoftwareEngineer.pdf');
    console.log('\nOr run: ./convert_to_pdf.sh\n');
}
