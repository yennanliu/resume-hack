#!/bin/bash

# Resume PDF Conversion Script
# Yen-Nan Liu - Software Engineer Resume

echo "🎨 Resume PDF Converter"
echo "======================="
echo ""

HTML_FILE="YenNan_Liu_Resume.html"
PDF_FILE="YenNan_Liu_SoftwareEngineer.pdf"

# Check if HTML file exists
if [ ! -f "$HTML_FILE" ]; then
    echo "❌ Error: $HTML_FILE not found!"
    echo "Make sure you're in the correct directory (~/resume-hack/ws/)"
    exit 1
fi

echo "📄 Converting: $HTML_FILE → $PDF_FILE"
echo ""

# Try different conversion methods in order of preference

# Method 1: wkhtmltopdf (if installed)
if command -v wkhtmltopdf &> /dev/null; then
    echo "✅ Using wkhtmltopdf..."
    wkhtmltopdf --enable-local-file-access --print-media-type "$HTML_FILE" "$PDF_FILE"

    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ PDF created successfully: $PDF_FILE"
        echo "📊 File size: $(ls -lh "$PDF_FILE" | awk '{print $5}')"
        echo ""
        echo "🎯 Next steps:"
        echo "   1. Open the PDF and verify it looks correct"
        echo "   2. Check that text is selectable (try highlighting)"
        echo "   3. Verify colors appear (blue accents)"
        echo ""
        open "$PDF_FILE"
        exit 0
    fi
fi

# Method 2: Chrome headless (if installed)
if command -v google-chrome &> /dev/null || command -v chromium &> /dev/null; then
    echo "✅ Using Chrome headless..."
    CHROME_BIN=$(command -v google-chrome || command -v chromium)

    "$CHROME_BIN" --headless --disable-gpu --print-to-pdf="$PDF_FILE" "$HTML_FILE"

    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ PDF created successfully: $PDF_FILE"
        echo "📊 File size: $(ls -lh "$PDF_FILE" | awk '{print $5}')"
        open "$PDF_FILE"
        exit 0
    fi
fi

# Method 3: Open in browser for manual conversion
echo "ℹ️  No automatic conversion tools found."
echo ""
echo "📖 Manual conversion steps:"
echo ""
echo "1. Opening HTML file in your default browser..."
open "$HTML_FILE"
echo ""
echo "2. In your browser:"
echo "   • Press Cmd+P (Mac) or Ctrl+P (Windows/Linux)"
echo "   • Select 'Save as PDF' as destination"
echo "   • IMPORTANT: Enable 'Background graphics' ✅"
echo "   • Disable 'Headers and footers' ❌"
echo "   • Click 'Save'"
echo "   • Save as: $PDF_FILE"
echo ""
echo "3. Verify the PDF:"
echo "   • Blue colors appear"
echo "   • Text is selectable"
echo "   • All content fits properly"
echo ""
echo "💡 See PDF_CONVERSION_GUIDE.md for detailed instructions"
echo ""

# Install wkhtmltopdf suggestion
echo "🔧 To enable automatic conversion, install wkhtmltopdf:"
echo "   brew install wkhtmltopdf"
echo ""
