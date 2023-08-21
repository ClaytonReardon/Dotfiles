#!/bin/bash

# Define the array of variables
squares=(
    "%{F#EF2F27} %{F-}%{F#519F50} %{F-}%{F#519F50} %{F-}%{F#519F50}%{F-}"
    "%{F#519F50} %{F-}%{F#EF2F27} %{F-}%{F#519F50} %{F-}%{F#519F50}%{F-}"
    "%{F#519F50} %{F-}%{F#519F50} %{F-}%{F#EF2F27} %{F-}%{F#519F50}%{F-}"
    "%{F#519F50} %{F-}%{F#519F50} %{F-}%{F#519F50} %{F-}%{F#EF2F27}%{F-}"
    "%{F#EF2F27} %{F-}%{F#519F50} %{F-}%{F#EF2F27} %{F-}%{F#519F50}%{F-}"
    "%{F#EF2F27} %{F-}%{F#519F50} %{F-}%{F#519F50} %{F-}%{F#EF2F27}%{F-}"
    "%{F#519F50} %{F-}%{F#EF2F27} %{F-}%{F#EF2F27} %{F-}%{F#519F50}%{F-}"
    "%{F#519F50} %{F-}%{F#EF2F27} %{F-}%{F#519F50} %{F-}%{F#EF2F27}%{F-}"
    "%{F#EF2F27} %{F-}%{F#EF2F27} %{F-}%{F#519F50} %{F-}%{F#519F50}%{F-}"
    "%{F#EF2F27} %{F-}%{F#EF2F27} %{F-}%{F#519F50} %{F-}%{F#EF2F27}%{F-}"
    "%{F#EF2F27} %{F-}%{F#519F50} %{F-}%{F#519F50} %{F-}%{F#519F50}%{F-}"
    "%{F#519F50} %{F-}%{F#EF2F27} %{F-}%{F#519F50} %{F-}%{F#519F50}%{F-}"
    "%{F#519F50} %{F-}%{F#519F50} %{F-}%{F#EF2F27} %{F-}%{F#519F50}%{F-}"
    "%{F#519F50} %{F-}%{F#519F50} %{F-}%{F#519F50} %{F-}%{F#EF2F27}%{F-}"
    "%{F#EF2F27} %{F-}%{F#519F50} %{F-}%{F#EF2F27} %{F-}%{F#EF2F27}%{F-}"
)

# Get the number of items in the array
num_squares=${#squares[@]}

# Loop forever
while true; do
    # Generate a random index
    random_index=$((RANDOM % num_squares))
    
    # Echo the randomly chosen variable
    echo -e "${squares[random_index]}"
    
    # Sleep for 1 second before displaying the next variable
    sleep 0.5
done

