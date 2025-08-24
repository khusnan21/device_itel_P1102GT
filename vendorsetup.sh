#!/usr/bin/env bash
export LC_ALL="C"

# Apply recovery patches
cd bootable/recovery
for p in ../../device/itel/P1102GT/patches/*; do
    if ! git am -3 <"$p"; then
        echo "Fuzzy applying $p"
        patch -p1 <"$p"
        git add .
        git am --continue || {
            echo "Failed to apply $p"
            exit 1
        }
    fi
done
cd ../../

# Register lunch combo
add_lunch_combo twrp_P1102GT-eng
