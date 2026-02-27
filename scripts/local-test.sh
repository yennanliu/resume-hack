#!/bin/bash

# Local testing script for Resume Hack plugin
# Run this before pushing to ensure everything works

set -e

echo "🧪 Resume Hack Plugin - Local Test Suite"
echo "========================================"
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

ERRORS=0
WARNINGS=0

# Test 1: Check required files
echo "1️⃣  Checking required files..."
required_files=("SKILL.md" "README.md" "LICENSE")
for file in "${required_files[@]}"; do
  if [ -f "$file" ]; then
    echo -e "  ${GREEN}✅${NC} $file found"
  else
    echo -e "  ${RED}❌${NC} $file NOT FOUND"
    ERRORS=$((ERRORS + 1))
  fi
done
echo ""

# Test 2: Check skills directory
echo "2️⃣  Validating skills directory..."
if [ -d "skills" ]; then
  echo -e "  ${GREEN}✅${NC} skills directory found"

  skill_count=0
  for skill_dir in skills/*/; do
    if [ -d "$skill_dir" ]; then
      skill_name=$(basename "$skill_dir")
      skill_file="${skill_dir}SKILL.md"

      if [ -f "$skill_file" ]; then
        if [ -s "$skill_file" ]; then
          echo -e "  ${GREEN}✅${NC} $skill_name"
          skill_count=$((skill_count + 1))
        else
          echo -e "  ${RED}❌${NC} $skill_name - EMPTY FILE"
          ERRORS=$((ERRORS + 1))
        fi
      else
        echo -e "  ${RED}❌${NC} $skill_name - SKILL.md NOT FOUND"
        ERRORS=$((ERRORS + 1))
      fi
    fi
  done

  echo ""
  echo "  Total skills: $skill_count"
  if [ $skill_count -ne 12 ]; then
    echo -e "  ${YELLOW}⚠️${NC}  Expected 12 skills, found $skill_count"
    WARNINGS=$((WARNINGS + 1))
  fi
else
  echo -e "  ${RED}❌${NC} skills directory NOT FOUND"
  ERRORS=$((ERRORS + 1))
fi
echo ""

# Test 3: Check templates
echo "3️⃣  Checking templates..."
if [ -d "templates" ]; then
  template_count=$(find templates -name "*.md" 2>/dev/null | wc -l)
  echo -e "  ${GREEN}✅${NC} templates directory found ($template_count files)"
else
  echo -e "  ${RED}❌${NC} templates directory NOT FOUND"
  ERRORS=$((ERRORS + 1))
fi
echo ""

# Test 4: Check guidelines
echo "4️⃣  Checking guidelines..."
if [ -d "guidelines" ]; then
  guideline_count=$(find guidelines -name "*.md" 2>/dev/null | wc -l)
  echo -e "  ${GREEN}✅${NC} guidelines directory found ($guideline_count files)"
else
  echo -e "  ${RED}❌${NC} guidelines directory NOT FOUND"
  ERRORS=$((ERRORS + 1))
fi
echo ""

# Test 5: Validate markdown syntax
echo "5️⃣  Validating markdown files..."
md_files=$(find . -name "*.md" -type f)
md_count=$(echo "$md_files" | wc -l)
echo "  Found $md_count markdown files"

invalid_md=0
for file in $md_files; do
  if [ -f "$file" ]; then
    if [ -s "$file" ]; then
      if grep -q "^#" "$file"; then
        # File has headers, looks good
        :
      else
        echo -e "  ${YELLOW}⚠️${NC}  $file - No headers found"
        WARNINGS=$((WARNINGS + 1))
      fi
    else
      echo -e "  ${RED}❌${NC} $file - EMPTY FILE"
      invalid_md=$((invalid_md + 1))
      ERRORS=$((ERRORS + 1))
    fi
  fi
done

if [ $invalid_md -eq 0 ]; then
  echo -e "  ${GREEN}✅${NC} All markdown files are valid"
fi
echo ""

# Test 6: Check documentation completeness
echo "6️⃣  Checking documentation completeness..."
if grep -q "Installation" README.md; then
  echo -e "  ${GREEN}✅${NC} Installation instructions found"
else
  echo -e "  ${YELLOW}⚠️${NC}  Installation instructions might be missing"
  WARNINGS=$((WARNINGS + 1))
fi

if grep -q "github.com" README.md; then
  echo -e "  ${GREEN}✅${NC} Repository link found"
else
  echo -e "  ${YELLOW}⚠️${NC}  Repository link might be missing"
  WARNINGS=$((WARNINGS + 1))
fi
echo ""

# Test 7: Simulate installation
echo "7️⃣  Simulating installation..."
TEST_DIR="/tmp/resume-hack-test-$$"
mkdir -p "$TEST_DIR"

if cp -r . "$TEST_DIR/" 2>/dev/null; then
  echo -e "  ${GREEN}✅${NC} Files copied successfully"

  # Verify installation
  if [ -f "$TEST_DIR/SKILL.md" ] && [ -d "$TEST_DIR/skills" ]; then
    echo -e "  ${GREEN}✅${NC} Installation structure verified"
  else
    echo -e "  ${RED}❌${NC} Installation structure invalid"
    ERRORS=$((ERRORS + 1))
  fi

  # Cleanup
  rm -rf "$TEST_DIR"
else
  echo -e "  ${RED}❌${NC} Copy failed"
  ERRORS=$((ERRORS + 1))
fi
echo ""

# Test 8: Check plugin size
echo "8️⃣  Checking plugin size..."
total_size_kb=$(du -sk . | cut -f1)
total_size_mb=$(echo "scale=2; $total_size_kb / 1024" | bc 2>/dev/null || echo "N/A")

if [ "$total_size_mb" != "N/A" ]; then
  echo "  Total size: ${total_size_mb}MB"

  if [ $total_size_kb -gt 10240 ]; then
    echo -e "  ${YELLOW}⚠️${NC}  Plugin size exceeds 10MB"
    WARNINGS=$((WARNINGS + 1))
  else
    echo -e "  ${GREEN}✅${NC} Plugin size is reasonable"
  fi
else
  echo "  Size: ${total_size_kb}KB"
fi
echo ""

# Test 9: Count documentation lines
echo "9️⃣  Documentation statistics..."
total_lines=$(find . -name "*.md" -type f -exec wc -l {} + 2>/dev/null | tail -1 | awk '{print $1}' || echo "0")
echo "  Total documentation lines: $total_lines"

if [ $total_lines -lt 5000 ]; then
  echo -e "  ${YELLOW}⚠️${NC}  Documentation might be incomplete"
  WARNINGS=$((WARNINGS + 1))
else
  echo -e "  ${GREEN}✅${NC} Comprehensive documentation"
fi
echo ""

# Final summary
echo "========================================"
echo "📊 Test Summary"
echo "========================================"

if [ $ERRORS -eq 0 ] && [ $WARNINGS -eq 0 ]; then
  echo -e "${GREEN}✅ All tests passed!${NC}"
  echo ""
  echo "Your plugin is ready to commit and push."
  exit 0
elif [ $ERRORS -eq 0 ]; then
  echo -e "${YELLOW}⚠️  Tests passed with $WARNINGS warning(s)${NC}"
  echo ""
  echo "You can commit and push, but consider addressing the warnings."
  exit 0
else
  echo -e "${RED}❌ Tests failed with $ERRORS error(s) and $WARNINGS warning(s)${NC}"
  echo ""
  echo "Please fix the errors before committing."
  exit 1
fi
