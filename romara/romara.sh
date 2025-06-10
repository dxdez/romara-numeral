#!/bin/bash

# Function to convert Roman numeral (uppercase) to integer
romara_convert() {
    local roman=$(echo "$1" | tr '[:lower:]' '[:upper:]')
    declare -A value=([I]=1 [V]=5 [X]=10 [L]=50 [C]=100 [D]=500 [M]=1000)
    local total=0
    local prev=0

    # Check for invalid characters
    if [[ ! "$roman" =~ ^[IVXLCDM]+$ ]]; then
        echo "Error: Invalid Roman numeral"
        return 1
    fi

    # Convert each character, handling subtractive notation
    for ((i=${#roman}-1; i>=0; i--)); do
        local char="${roman:$i:1}"
        local current=${value[$char]}
        if (( current < prev )); then
            ((total-=current))
        else
            ((total+=current))
        fi
        prev=$current
    done

    echo "$total"
}

# Main logic: if argument is provided, convert it
if [ $# -eq 1 ]; then
    romara_convert "$1"
else
    echo "Usage: romara <roman_numeral>"
fi

