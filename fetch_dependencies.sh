#!/bin/bash
set -e
cd "${0%/*}"

libraries=(
    "https://unpkg.com/lucide@latest/dist/umd/lucide.min.js"
    "https://unpkg.com/bulma@latest/css/bulma.min.css"
    "https://unpkg.com/three@0.149.0/build/three.min.js" #three.js became complicated after r160, deprecation warning added in r150. might implement later
    "https://unpkg.com/vanta@latest/dist/vanta.dots.min.js"
)

for i in "${libraries[@]}"; do
    printf "Fetching \"%s\".. " "$i"
    wget -q -N -P ./libraries "$i"
    echo "done!"
done