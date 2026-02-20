# Portfolio Timeline Management Script
# Run this script to update your portfolio as you complete milestones

Write-Host "
=== Portfolio Timeline Manager ===" -ForegroundColor Cyan
Write-Host "
Your Planned Portfolio Additions:" -ForegroundColor Yellow
Write-Host "1.  [2 days]    - Academic Reference Letter"
Write-Host "2.  [6 months]  - Mentor Recommendation"
Write-Host "3.  [18 months] - First MA Placement Reflection"
Write-Host "4.  [18 months] - BASW CPD Reflection"
Write-Host "5.  [30 months] - Final Semester Project"
Write-Host "6.  [30 months] - Graded Portfolio"
Write-Host "7.  [30 months] - Second Placement Reflection"
Write-Host "8.  [30 months] - Second BASW CPD Reflection"
Write-Host "
"

# Function to update a content item from draft to published
function Publish-Content {
    param([string])
    
    if (Test-Path ) {
         = Get-Content  -Raw
         =  -replace 'draft: true', 'draft: false'
         | Out-File -FilePath  -Encoding UTF8
        Write-Host "✓ Published: " -ForegroundColor Green
    } else {
        Write-Host "✗ File not found: " -ForegroundColor Red
    }
}

# Function to unhide a menu item
function Unhide-MenuItem {
    param([string])
    
     = Get-Content hugo.toml -Raw
     =  -replace "identifier = ''
  hidden = true", "identifier = ''"
     | Out-File -FilePath hugo.toml -Encoding UTF8
    Write-Host "✓ Menu item '' is now visible" -ForegroundColor Green
}

# Available commands
Write-Host "Available Commands:" -ForegroundColor Cyan
Write-Host "  publish-letter     - Publish academic reference letter"
Write-Host "  publish-mentor     - Publish mentor recommendation"
Write-Host "  update-hugo        - Restart Hugo server"
Write-Host "  check-timeline     - Show remaining items"
Write-Host ""
