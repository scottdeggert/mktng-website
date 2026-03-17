#!/bin/bash
# Download all blog featured images from WordPress to local public/images/blog/
# Run this script from the project root: bash scripts/download-blog-images.sh

set -e

DEST="public/images/blog"
mkdir -p "$DEST"

SUCCESS=0
FAIL=0
FAILED_FILES=()

download() {
  local url="$1"
  local filename="$2"
  local dest="$DEST/$filename"

  if [ -f "$dest" ] && [ -s "$dest" ]; then
    echo "SKIP (exists): $filename"
    SUCCESS=$((SUCCESS + 1))
    return
  fi

  echo -n "Downloading $filename ... "
  if curl -fsSL -o "$dest" "$url"; then
    if [ -s "$dest" ]; then
      echo "OK ($(du -h "$dest" | cut -f1))"
      SUCCESS=$((SUCCESS + 1))
    else
      echo "FAIL (empty file)"
      rm -f "$dest"
      FAIL=$((FAIL + 1))
      FAILED_FILES+=("$filename")
    fi
  else
    echo "FAIL (curl error)"
    rm -f "$dest"
    FAIL=$((FAIL + 1))
    FAILED_FILES+=("$filename")
  fi
}

# 33 blog featured images
# Note: Some WordPress filenames repeat across year/month folders, so those get date-suffixed local names

download "https://mktng.co/wp-content/uploads/2016/03/image3.jpg" "image3.jpg"
download "https://mktng.co/wp-content/uploads/2016/03/image7.jpg" "image7.jpg"
download "https://mktng.co/wp-content/uploads/2016/06/QTck6Mu8.jpeg" "QTck6Mu8.jpeg"
download "https://mktng.co/wp-content/uploads/2024/01/aLFOnRg.jpeg" "aLFOnRg.jpeg"
download "https://mktng.co/wp-content/uploads/2024/01/image1.jpg" "image1.jpg"
download "https://mktng.co/wp-content/uploads/2024/01/image2.jpg" "image2.jpg"
download "https://mktng.co/wp-content/uploads/2024/01/shdp56Y8.jpeg" "shdp56Y8.jpeg"
download "https://mktng.co/wp-content/uploads/2024/02/For-Brands-Who-Care-MKTNG-New-Tagline.jpg" "For-Brands-Who-Care-MKTNG-New-Tagline.jpg"
download "https://mktng.co/wp-content/uploads/2024/02/Social-Venture-Partners-SVP-SacramentoMKTNG-Blog-Post.jpg" "Social-Venture-Partners-SVP-SacramentoMKTNG-Blog-Post.jpg"
download "https://mktng.co/wp-content/uploads/2024/05/MKTNG-Blog-Post-Image-1.png" "MKTNG-Blog-Post-Image-1.png"
download "https://mktng.co/wp-content/uploads/2024/06/6-Top-Paid-Media-Trends-to-Watch-in-2024.png" "6-Top-Paid-Media-Trends-to-Watch-in-2024.png"
download "https://mktng.co/wp-content/uploads/2024/06/Accelerating-Growth-Leveraging-the-Strategic-Power-of-Paid-Media.png" "Accelerating-Growth-Leveraging-the-Strategic-Power-of-Paid-Media.png"
download "https://mktng.co/wp-content/uploads/2024/06/Evolution-of-Paid-Media-copy.png" "Evolution-of-Paid-Media-copy.png"
download "https://mktng.co/wp-content/uploads/2024/06/Google-Display-Network-vs.-Programmatic-%E2%80%93-Whats-Best-for-Your-Brand.png" "Google-Display-Network-vs-Programmatic-Whats-Best-for-Your-Brand.png"
download "https://mktng.co/wp-content/uploads/2024/06/Navigating-Digital-Paid-Media.png" "Navigating-Digital-Paid-Media.png"
download "https://mktng.co/wp-content/uploads/2024/06/Navigating-the-Ethical-Landscape-of-AI-in-Communications-and-Marketing.png" "Navigating-the-Ethical-Landscape-of-AI-in-Communications-and-Marketing.png"
download "https://mktng.co/wp-content/uploads/2024/06/Why-Hiring-a-Full-Service-Digital-Marketing-Agency-is-a-Game-Changer-for-Your-Brand.png" "Why-Hiring-a-Full-Service-Digital-Marketing-Agency-is-a-Game-Changer-for-Your-Brand.png"
download "https://mktng.co/wp-content/uploads/2024/07/MKTNG-Blog-Post-Images.png" "MKTNG-Blog-Post-Images-2024-07.png"
download "https://mktng.co/wp-content/uploads/2024/10/Building-Trust_-The-Essential-Role-of-Proactive-Communication-in-Construction-and-Infrastructure.png" "Building-Trust-Proactive-Communication-Construction-Infrastructure.png"
download "https://mktng.co/wp-content/uploads/2024/10/Building-Your-Content-Machine_-9-Tips-for-Success.png" "Building-Your-Content-Machine-9-Tips-for-Success.png"
download "https://mktng.co/wp-content/uploads/2024/10/Controlling-the-Narrative-Around-Your-Brand-It-Begins-at-Home-on-Your-Website.png" "Controlling-the-Narrative-Around-Your-Brand-Website.png"
download "https://mktng.co/wp-content/uploads/2024/10/Empowering-Voices_-The-Crucial-Role-of-Trauma-Informed-Communications-in-Survivor-Storytelling.png" "Empowering-Voices-Trauma-Informed-Communications-Survivor-Storytelling.png"
download "https://mktng.co/wp-content/uploads/2024/10/The-Content-Ecosystem_-From-Blog-to-Inbox-to-Feed.png" "The-Content-Ecosystem-From-Blog-to-Inbox-to-Feed.png"
download "https://mktng.co/wp-content/uploads/2024/10/The-Media-Landscape-A-Crowded-Party.png" "The-Media-Landscape-A-Crowded-Party.png"
download "https://mktng.co/wp-content/uploads/2025/03/Ten-Years-of-Spark-The-MKTNG-Origin-Story.png" "Ten-Years-of-Spark-The-MKTNG-Origin-Story.png"
download "https://mktng.co/wp-content/uploads/2025/04/Beyond-AI-Hype-Finding-Practical-Communications-Value-in-a-Sea-of-Possibilities.png" "Beyond-AI-Hype-Finding-Practical-Communications-Value.png"
download "https://mktng.co/wp-content/uploads/2025/04/The-Big-Hit-Why-Media-and-Podcast-Coverage-Is-Just-the-Beginning.png" "The-Big-Hit-Why-Media-and-Podcast-Coverage-Is-Just-the-Beginning.png"
download "https://mktng.co/wp-content/uploads/2025/04/The-Press-Release-Paradox-Evolution-Not-Extinction.png" "The-Press-Release-Paradox-Evolution-Not-Extinction.png"
download "https://mktng.co/wp-content/uploads/2025/05/An-Interview-with-Our-First-Employee-Angela-Ficarelli-2.png" "An-Interview-with-Our-First-Employee-Angela-Ficarelli.png"
download "https://mktng.co/wp-content/uploads/2025/06/MKTNG-Blog-Post-Images-1.png" "MKTNG-Blog-Post-Images-2025-06.png"
download "https://mktng.co/wp-content/uploads/2025/07/MKTNG-Blog-Post-Images.png" "MKTNG-Blog-Post-Images-2025-07.png"
download "https://mktng.co/wp-content/uploads/2025/08/CleanStart-Perspectives.jpg" "CleanStart-Perspectives.jpg"
download "https://mktng.co/wp-content/uploads/2025/12/MKTNG-Blog-Post-Images.png" "MKTNG-Blog-Post-Images-2025-12.png"

echo ""
echo "========================================="
echo "Download complete: $SUCCESS succeeded, $FAIL failed"
if [ ${#FAILED_FILES[@]} -gt 0 ]; then
  echo "Failed files:"
  for f in "${FAILED_FILES[@]}"; do
    echo "  - $f"
  done
fi
echo "========================================="
