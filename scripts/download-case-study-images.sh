#!/bin/bash
# Download all case study images from WordPress to local public/images/case-studies/
# Run this script from the project root: bash scripts/download-case-study-images.sh

set -e

BASE="public/images/case-studies"

# Create directories for each case study
mkdir -p "$BASE/art-hotel"
mkdir -p "$BASE/aurora-beauty"
mkdir -p "$BASE/big-day-of-giving"
mkdir -p "$BASE/big-day-of-giving-2016"
mkdir -p "$BASE/brightwork-content-marketing"
mkdir -p "$BASE/brightwork-digital-display-ads"
mkdir -p "$BASE/cresleigh-homes"
mkdir -p "$BASE/dinepros"
mkdir -p "$BASE/eskaton-traveling-gnome-project"
mkdir -p "$BASE/glid-technologies"
mkdir -p "$BASE/go-palladio-mall"
mkdir -p "$BASE/hat-creek-construction-public-relations"
mkdir -p "$BASE/intero-real-estate-branding-advertising-and-content-marketing"
mkdir -p "$BASE/jibe-brand-messaging"
mkdir -p "$BASE/law-enforcement-chaplaincy-sacramento"
mkdir -p "$BASE/natural-stone-design-gallery"
mkdir -p "$BASE/ops-perfection"
mkdir -p "$BASE/palladio-stache-bash"
mkdir -p "$BASE/pge-workshop"
mkdir -p "$BASE/pottery-world"
mkdir -p "$BASE/sacramento-beer-week-at-palladio"
mkdir -p "$BASE/strategic-rebrand-for-advocacy-chiefs"
mkdir -p "$BASE/west-biofuels-public-relations"

SUCCESS=0
FAIL=0
FAILED_FILES=()

download() {
  local url="$1"
  local filepath="$2"
  local dest="$BASE/$filepath"

  if [ -f "$dest" ] && [ -s "$dest" ]; then
    echo "SKIP (exists): $filepath"
    SUCCESS=$((SUCCESS + 1))
    return
  fi

  echo -n "Downloading $filepath ... "
  if curl -fsSL -o "$dest" "$url"; then
    if [ -s "$dest" ]; then
      echo "OK ($(du -h "$dest" | cut -f1))"
      SUCCESS=$((SUCCESS + 1))
    else
      echo "FAIL (empty file)"
      rm -f "$dest"
      FAIL=$((FAIL + 1))
      FAILED_FILES+=("$filepath")
    fi
  else
    echo "FAIL (curl error)"
    rm -f "$dest"
    FAIL=$((FAIL + 1))
    FAILED_FILES+=("$filepath")
  fi
}

# 146 case study images across 23 projects

# --- strategic-rebrand-for-advocacy-chiefs ---
download "https://mktng.co/wp-content/uploads/2025/12/MKTNG-Case-Study-Headers.png" "strategic-rebrand-for-advocacy-chiefs/MKTNG-Case-Study-Headers.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "strategic-rebrand-for-advocacy-chiefs/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2025/12/Once-Sacramentos-best-kept-secret-Advocacy-Chiefs-had-outgrown-our-brand.-MKTNG-recaptured-our-dynamism.-Benjamin-Cadranel-J.D.-MAFM-Principal-Advocacy-Chiefs-LLC-copy.png" "strategic-rebrand-for-advocacy-chiefs/Once-Sacramentos-best-kept-secret-Advocacy-Chiefs-had-outgrown-our-brand.-MKTNG-recaptured-our-dynamism.-Benjamin-Cadranel-J.D.-MAFM-Principal-Advocacy-Chiefs-LLC-copy.png"
download "https://mktng.co/wp-content/uploads/2025/12/Advocacy-Chiefs-Logo.png" "strategic-rebrand-for-advocacy-chiefs/Advocacy-Chiefs-Logo.png"
download "https://mktng.co/wp-content/uploads/2025/12/Once-Sacramentos-best-kept-secret-Advocacy-Chiefs-had-outgrown-our-brand.-MKTNG-recaptured-our-dynamism.-Benjamin-Cadranel-J.D.-MAFM-Principal-Advocacy-Chiefs-LLC.png" "strategic-rebrand-for-advocacy-chiefs/Once-Sacramentos-best-kept-secret-Advocacy-Chiefs-had-outgrown-our-brand.-MKTNG-recaptured-our-dynamism.-Benjamin-Cadranel-J.D.-MAFM-Principal-Advocacy-Chiefs-LLC.png"
download "https://mktng.co/wp-content/uploads/2025/12/Once-Sacramentos-best-kept-secret-Advocacy-Chiefs-had-outgrown-our-brand.-MKTNG-recaptured-our-dynamism.-Benjamin-Cadranel-J.D.-MAFM-Principal-Advocacy-Chiefs-LLC-1-copy.png" "strategic-rebrand-for-advocacy-chiefs/Once-Sacramentos-best-kept-secret-Advocacy-Chiefs-had-outgrown-our-brand.-MKTNG-recaptured-our-dynamism.-Benjamin-Cadranel-J.D.-MAFM-Principal-Advocacy-Chiefs-LLC-1-copy.png"
download "https://mktng.co/wp-content/uploads/2025/12/Once-Sacramentos-best-kept-secret-Advocacy-Chiefs-had-outgrown-our-brand.-MKTNG-recaptured-our-dynamism.-Benjamin-Cadranel-J.D.-MAFM-Principal-Advocacy-Chiefs-LLC-1.png" "strategic-rebrand-for-advocacy-chiefs/Once-Sacramentos-best-kept-secret-Advocacy-Chiefs-had-outgrown-our-brand.-MKTNG-recaptured-our-dynamism.-Benjamin-Cadranel-J.D.-MAFM-Principal-Advocacy-Chiefs-LLC-1.png"
# --- glid-technologies ---
download "https://mktng.co/wp-content/uploads/2025/11/Glid-Case-Study.png" "glid-technologies/Glid-Case-Study.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "glid-technologies/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2025/11/Screen-Shot-2025-11-18-at-2.41.47-PM.png" "glid-technologies/Screen-Shot-2025-11-18-at-2.41.47-PM.png"
download "https://mktng.co/wp-content/uploads/2025/11/Screen-Shot-2025-11-18-at-2.43.17-PM.png" "glid-technologies/Screen-Shot-2025-11-18-at-2.43.17-PM.png"
download "https://mktng.co/wp-content/uploads/2025/11/Screen-Shot-2025-11-18-at-2.42.49-PM.png" "glid-technologies/Screen-Shot-2025-11-18-at-2.42.49-PM.png"
download "https://mktng.co/wp-content/uploads/2025/11/Screen-Shot-2025-11-18-at-2.42.14-PM.png" "glid-technologies/Screen-Shot-2025-11-18-at-2.42.14-PM.png"
# --- law-enforcement-chaplaincy-sacramento ---
download "https://mktng.co/wp-content/uploads/2025/11/Law-Enforcement-Chaplaincy-Sacramento-LECS.png" "law-enforcement-chaplaincy-sacramento/Law-Enforcement-Chaplaincy-Sacramento-LECS.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "law-enforcement-chaplaincy-sacramento/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2025/11/IMG_1063.png" "law-enforcement-chaplaincy-sacramento/IMG_1063.png"
download "https://mktng.co/wp-content/uploads/2025/11/IMG_1064.png" "law-enforcement-chaplaincy-sacramento/IMG_1064.png"
download "https://mktng.co/wp-content/uploads/2025/11/IMG_1067.png" "law-enforcement-chaplaincy-sacramento/IMG_1067.png"
download "https://mktng.co/wp-content/uploads/2025/11/IMG_1068.png" "law-enforcement-chaplaincy-sacramento/IMG_1068.png"
download "https://mktng.co/wp-content/uploads/2025/11/20250625_094806.jpg" "law-enforcement-chaplaincy-sacramento/20250625_094806.jpg"
download "https://mktng.co/wp-content/uploads/2025/11/LECS-Logo-NEW.jpg" "law-enforcement-chaplaincy-sacramento/LECS-Logo-NEW.jpg"
# --- pge-workshop ---
download "https://mktng.co/wp-content/uploads/2024/05/Case-Study-Logo-Graphics-for-MKTNG.co_.png" "pge-workshop/Case-Study-Logo-Graphics-for-MKTNG.co_.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "pge-workshop/Rectangle-52.png"
# --- hat-creek-construction-public-relations ---
download "https://mktng.co/wp-content/uploads/2024/04/Hat-Creek-Construction-Featured-Image.jpg" "hat-creek-construction-public-relations/Hat-Creek-Construction-Featured-Image.jpg"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "hat-creek-construction-public-relations/Rectangle-52.png"
# --- west-biofuels-public-relations ---
download "https://mktng.co/wp-content/uploads/2024/04/West-BioFuels.jpg" "west-biofuels-public-relations/West-BioFuels.jpg"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "west-biofuels-public-relations/Rectangle-52.png"
# --- jibe-brand-messaging ---
download "https://mktng.co/wp-content/uploads/2024/04/Jibe.jpg" "jibe-brand-messaging/Jibe.jpg"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "jibe-brand-messaging/Rectangle-52.png"
# --- intero-real-estate-branding-advertising-and-content-marketing ---
download "https://mktng.co/wp-content/uploads/2024/04/Intero-Featured-Image.jpg" "intero-real-estate-branding-advertising-and-content-marketing/Intero-Featured-Image.jpg"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "intero-real-estate-branding-advertising-and-content-marketing/Rectangle-52.png"
# --- ops-perfection ---
download "https://mktng.co/wp-content/uploads/2024/02/Ops-Perfection.png" "ops-perfection/Ops-Perfection.png"
download "https://mktng.co/wp-content/uploads/2024/02/Ops-Perfection-Logo-WHT.png" "ops-perfection/Ops-Perfection-Logo-WHT.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "ops-perfection/Rectangle-52.png"
# --- brightwork-content-marketing ---
download "https://mktng.co/wp-content/uploads/2024/02/BW-2.png" "brightwork-content-marketing/BW-2.png"
download "https://mktng.co/wp-content/uploads/2024/02/Brightwork-Logo-Wht.png" "brightwork-content-marketing/Brightwork-Logo-Wht.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "brightwork-content-marketing/Rectangle-52.png"
# --- brightwork-digital-display-ads ---
download "https://mktng.co/wp-content/uploads/2024/02/BW-1.png" "brightwork-digital-display-ads/BW-1.png"
download "https://mktng.co/wp-content/uploads/2024/02/Brightwork-Logo-Wht.png" "brightwork-digital-display-ads/Brightwork-Logo-Wht.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "brightwork-digital-display-ads/Rectangle-52.png"
# --- cresleigh-homes ---
download "https://mktng.co/wp-content/uploads/2023/11/image-8.png" "cresleigh-homes/image-8.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "cresleigh-homes/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2023/09/cresleigh-peaks-yuba-city-options.jpg" "cresleigh-homes/cresleigh-peaks-yuba-city-options.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/Cresleigh-Energy-marketing-automation-email.jpg" "cresleigh-homes/Cresleigh-Energy-marketing-automation-email.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/cresleigh-marketing-automation-graph.jpg" "cresleigh-homes/cresleigh-marketing-automation-graph.jpg"
download "https://mktng.co/wp-content/uploads/2024/01/Cresleigh-Home-650x650-1.png" "cresleigh-homes/Cresleigh-Home-650x650-1.png"
# --- go-palladio-mall ---
download "https://mktng.co/wp-content/uploads/2023/11/Go-Palladio-Mall.png" "go-palladio-mall/Go-Palladio-Mall.png"
download "https://mktng.co/wp-content/uploads/2023/11/Palladio-Logo-Only-white.png" "go-palladio-mall/Palladio-Logo-Only-white.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "go-palladio-mall/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2023/09/palladio-selfie-summer-concert-series.jpg" "go-palladio-mall/palladio-selfie-summer-concert-series.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/Palladio-Summer-Series-Disco.jpg" "go-palladio-mall/Palladio-Summer-Series-Disco.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/Palladio-Summer-Series-Event.jpg" "go-palladio-mall/Palladio-Summer-Series-Event.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/Palladio-Yoga.jpg" "go-palladio-mall/Palladio-Yoga.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/Photo-Mar-29-2-17-01-PM.jpg" "go-palladio-mall/Photo-Mar-29-2-17-01-PM.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/Palladio-Comic-con.png" "go-palladio-mall/Palladio-Comic-con.png"
# --- big-day-of-giving ---
download "https://mktng.co/wp-content/uploads/2023/11/Big-Day-of-Giving.png" "big-day-of-giving/Big-Day-of-Giving.png"
download "https://mktng.co/wp-content/uploads/elementor/thumbs/community-foundation-logo-white-qjzc85zy04zdfat22elcsxupopqbgr130ksvoxejtc.png" "big-day-of-giving/community-foundation-logo-white-qjzc85zy04zdfat22elcsxupopqbgr130ksvoxejtc.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "big-day-of-giving/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2023/11/BigDOG2015.jpg" "big-day-of-giving/BigDOG2015.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/Hot-Italian-Big-Day-of-Giving.jpg" "big-day-of-giving/Hot-Italian-Big-Day-of-Giving.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/Non-Profit-Check-In-Big-Day-of-Giving.jpg" "big-day-of-giving/Non-Profit-Check-In-Big-Day-of-Giving.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/Sacramento-Mayor-Kevin-Johnson-Big-Day-of-Giving.jpg" "big-day-of-giving/Sacramento-Mayor-Kevin-Johnson-Big-Day-of-Giving.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/BigDay-of-Giving-Sac-RP-News.jpg" "big-day-of-giving/BigDay-of-Giving-Sac-RP-News.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/Dancer-Big-Day-of-Giving.jpg" "big-day-of-giving/Dancer-Big-Day-of-Giving.jpg"
# --- dinepros ---
download "https://mktng.co/wp-content/uploads/2023/11/Dine-Pro.png" "dinepros/Dine-Pro.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "dinepros/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2023/09/DineProsStyleGuide.png" "dinepros/DineProsStyleGuide.png"
download "https://mktng.co/wp-content/uploads/2023/09/DinePros-Website.png" "dinepros/DinePros-Website.png"
download "https://mktng.co/wp-content/uploads/2023/09/MKT1815-DPlogo-vColor.jpg" "dinepros/MKT1815-DPlogo-vColor.jpg"
# --- aurora-beauty ---
download "https://mktng.co/wp-content/uploads/2023/11/Aurora-Beauty.png" "aurora-beauty/Aurora-Beauty.png"
download "https://mktng.co/wp-content/uploads/2023/11/aurora.png" "aurora-beauty/aurora.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "aurora-beauty/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2023/09/MKT1715-AurLogoFin-color-1.png" "aurora-beauty/MKT1715-AurLogoFin-color-1.png"
download "https://mktng.co/wp-content/uploads/2023/09/AuroraBrandStyleGuide1.png" "aurora-beauty/AuroraBrandStyleGuide1.png"
download "https://mktng.co/wp-content/uploads/2023/09/Aurora-Beauty.png" "aurora-beauty/Aurora-Beauty.png"
download "https://mktng.co/wp-content/uploads/2023/09/Aurora-Beauty-Tshirts.jpg" "aurora-beauty/Aurora-Beauty-Tshirts.jpg"
# --- palladio-stache-bash ---
download "https://mktng.co/wp-content/uploads/2023/11/Stache-Bash.png" "palladio-stache-bash/Stache-Bash.png"
download "https://mktng.co/wp-content/uploads/2023/11/Palladio-Logo-Only-white.png" "palladio-stache-bash/Palladio-Logo-Only-white.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "palladio-stache-bash/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2023/09/21423999150_bd197daf26_k.jpg" "palladio-stache-bash/21423999150_bd197daf26_k.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/21425174069_46a5437fed_k.jpg" "palladio-stache-bash/21425174069_46a5437fed_k.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/Stache-Bash-Logo.jpg" "palladio-stache-bash/Stache-Bash-Logo.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/21585694146_4f4644fbca_k.jpg" "palladio-stache-bash/21585694146_4f4644fbca_k.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/21585786036_580692df39_k.jpg" "palladio-stache-bash/21585786036_580692df39_k.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/21611972655_e0cf777ca7_k.jpg" "palladio-stache-bash/21611972655_e0cf777ca7_k.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/21612285185_98151f4851_k.jpg" "palladio-stache-bash/21612285185_98151f4851_k.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/21612335535_1168e84d13_k.jpg" "palladio-stache-bash/21612335535_1168e84d13_k.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/21621049041_51fb26575a_k.jpg" "palladio-stache-bash/21621049041_51fb26575a_k.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/21621060061_dab0b55e9c_k.jpg" "palladio-stache-bash/21621060061_dab0b55e9c_k.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/James-Cavernjpg.jpg" "palladio-stache-bash/James-Cavernjpg.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/20989268754_77aa96cd2c_k.jpg" "palladio-stache-bash/20989268754_77aa96cd2c_k.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/20989291434_f7218101da_k.jpg" "palladio-stache-bash/20989291434_f7218101da_k.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/20991167313_7385730072_k.jpg" "palladio-stache-bash/20991167313_7385730072_k.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/20991170023_752dcf6a6f_k.jpg" "palladio-stache-bash/20991170023_752dcf6a6f_k.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/20991201733_a1bf3ef49f_k.jpg" "palladio-stache-bash/20991201733_a1bf3ef49f_k.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/21424152340_87bee4c178_k.jpg" "palladio-stache-bash/21424152340_87bee4c178_k.jpg"
# --- pottery-world ---
download "https://mktng.co/wp-content/uploads/2023/11/Pottery-World.png" "pottery-world/Pottery-World.png"
download "https://mktng.co/wp-content/uploads/2023/11/pottery-world-logo-big-color-1.png" "pottery-world/pottery-world-logo-big-color-1.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "pottery-world/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2023/09/PW-E-Blast.png" "pottery-world/PW-E-Blast.png"
download "https://mktng.co/wp-content/uploads/2023/09/PW-Christmas-Sign.png" "pottery-world/PW-Christmas-Sign.png"
download "https://mktng.co/wp-content/uploads/2023/09/PW-Sign-1.png" "pottery-world/PW-Sign-1.png"
download "https://mktng.co/wp-content/uploads/2023/09/PW-Tableware-Sign.png" "pottery-world/PW-Tableware-Sign.png"
# --- natural-stone-design-gallery ---
download "https://mktng.co/wp-content/uploads/2023/11/Natural-Stone.png" "natural-stone-design-gallery/Natural-Stone.png"
download "https://mktng.co/wp-content/uploads/elementor/thumbs/Natural-Stone-white-qjzc85zy04z3704wwd94jdxphsi7tt1hpu1yog52ak.png" "natural-stone-design-gallery/Natural-Stone-white-qjzc85zy04z3704wwd94jdxphsi7tt1hpu1yog52ak.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "natural-stone-design-gallery/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2023/09/NSDG-logo.jpg" "natural-stone-design-gallery/NSDG-logo.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/NSDG-poster-2.jpg" "natural-stone-design-gallery/NSDG-poster-2.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/NSDG-poster.jpg" "natural-stone-design-gallery/NSDG-poster.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/NSDG-Website.png" "natural-stone-design-gallery/NSDG-Website.png"
download "https://mktng.co/wp-content/uploads/2023/09/NSDG-style-guide.jpg" "natural-stone-design-gallery/NSDG-style-guide.jpg"
# --- art-hotel ---
download "https://mktng.co/wp-content/uploads/2023/11/Art-Hotel.png" "art-hotel/Art-Hotel.png"
download "https://mktng.co/wp-content/uploads/2023/11/Art-Hotel-logo-white.png" "art-hotel/Art-Hotel-logo-white.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "art-hotel/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2023/11/Art-Hotel-birds.jpg" "art-hotel/Art-Hotel-birds.jpg"
download "https://mktng.co/wp-content/uploads/2023/11/Art-Hotel-Computers-Notes-On-Wall.jpg" "art-hotel/Art-Hotel-Computers-Notes-On-Wall.jpg"
download "https://mktng.co/wp-content/uploads/2023/11/Art-Hotel-Entrance.jpg" "art-hotel/Art-Hotel-Entrance.jpg"
download "https://mktng.co/wp-content/uploads/2023/11/Art-Hotel-Front-wall.jpg" "art-hotel/Art-Hotel-Front-wall.jpg"
download "https://mktng.co/wp-content/uploads/2023/11/Art-Hotel-LIDAR-Burner.jpg" "art-hotel/Art-Hotel-LIDAR-Burner.jpg"
download "https://mktng.co/wp-content/uploads/2023/11/Art-hotel-wood-sculpture.jpg" "art-hotel/Art-hotel-wood-sculpture.jpg"
download "https://mktng.co/wp-content/uploads/2023/11/Art-Hotel-Street-View.jpg" "art-hotel/Art-Hotel-Street-View.jpg"
download "https://mktng.co/wp-content/uploads/2023/11/Art-Hotel-Stairs.jpg" "art-hotel/Art-Hotel-Stairs.jpg"
# --- eskaton-traveling-gnome-project ---
download "https://mktng.co/wp-content/uploads/2023/11/Eskaton.png" "eskaton-traveling-gnome-project/Eskaton.png"
download "https://mktng.co/wp-content/uploads/2023/11/eskaton-logo-white.png" "eskaton-traveling-gnome-project/eskaton-logo-white.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "eskaton-traveling-gnome-project/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2023/09/ESKT-Canada.jpeg" "eskaton-traveling-gnome-project/ESKT-Canada.jpeg"
download "https://mktng.co/wp-content/uploads/2023/09/ESKT-Brunos-Gnome.jpg" "eskaton-traveling-gnome-project/ESKT-Brunos-Gnome.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/ESKT-bike-tour_2.jpg" "eskaton-traveling-gnome-project/ESKT-bike-tour_2.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/ESKT-700-Mile-Bike-Ride.jpg" "eskaton-traveling-gnome-project/ESKT-700-Mile-Bike-Ride.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/ESKT-Bruno-Canadian-Miner-and-Outdoorsman-scaled-e1592364196603-1080x1440-1.jpg" "eskaton-traveling-gnome-project/ESKT-Bruno-Canadian-Miner-and-Outdoorsman-scaled-e1592364196603-1080x1440-1.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/ESKT-George-from-Bay-Area-e1592364968277-1080x1440-1.jpg" "eskaton-traveling-gnome-project/ESKT-George-from-Bay-Area-e1592364968277-1080x1440-1.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/Refuel-Gnome-Comp-copy.jpg" "eskaton-traveling-gnome-project/Refuel-Gnome-Comp-copy.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/SF-Gnome-comp.jpg" "eskaton-traveling-gnome-project/SF-Gnome-comp.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/Pier-39-Gnome-COMP.jpg" "eskaton-traveling-gnome-project/Pier-39-Gnome-COMP.jpg"
# --- sacramento-beer-week-at-palladio ---
download "https://mktng.co/wp-content/uploads/2023/11/Sacramento-Beer-Week-at-Palladio.png" "sacramento-beer-week-at-palladio/Sacramento-Beer-Week-at-Palladio.png"
download "https://mktng.co/wp-content/uploads/2023/11/Palladio-Logo-Only-white.png" "sacramento-beer-week-at-palladio/Palladio-Logo-Only-white.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "sacramento-beer-week-at-palladio/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2023/09/Beer-Week-Poster.jpg" "sacramento-beer-week-at-palladio/Beer-Week-Poster.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/Fans-Follow-Beer-Week.jpg" "sacramento-beer-week-at-palladio/Fans-Follow-Beer-Week.jpg"
# --- big-day-of-giving-2016 ---
download "https://mktng.co/wp-content/uploads/2023/11/Big-Day-of-Giving-2016.png" "big-day-of-giving-2016/Big-Day-of-Giving-2016.png"
download "https://mktng.co/wp-content/uploads/elementor/thumbs/community-foundation-logo-white-qjzc85zy04zdfat22elcsxupopqbgr130ksvoxejtc.png" "big-day-of-giving-2016/community-foundation-logo-white-qjzc85zy04zdfat22elcsxupopqbgr130ksvoxejtc.png"
download "https://mktng.co/wp-content/uploads/2023/11/Rectangle-52.png" "big-day-of-giving-2016/Rectangle-52.png"
download "https://mktng.co/wp-content/uploads/2023/09/Big-Day-of-Giving-Cesar-Chavez-slamson.jpg" "big-day-of-giving-2016/Big-Day-of-Giving-Cesar-Chavez-slamson.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/BiG-Day-GameofThronestweet.jpg" "big-day-of-giving-2016/BiG-Day-GameofThronestweet.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/BiG-Day-Cesar-Chavez.jpg" "big-day-of-giving-2016/BiG-Day-Cesar-Chavez.jpg"
download "https://mktng.co/wp-content/uploads/2023/09/BIGDoG-Twibbon.jpg" "big-day-of-giving-2016/BIGDoG-Twibbon.jpg"

echo ""
echo "========================================="
echo "Download complete: $SUCCESS succeeded, $FAIL failed out of 146 images"
if [ ${#FAILED_FILES[@]} -gt 0 ]; then
  echo "Failed files:"
  for f in "${FAILED_FILES[@]}"; do
    echo "  - $f"
  done
fi
echo "========================================="
