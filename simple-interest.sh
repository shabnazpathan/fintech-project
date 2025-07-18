#!/bin/bash

# Check if 3 arguments are provided
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <Principal> <Rate> <Time>"
  exit 1
fi

# Assign arguments to variables
principal=$1
rate=$2
time=$3

# Calculate simple interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Output the result
echo "Simple Interest is: ₹$interest"
