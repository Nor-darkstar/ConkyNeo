#!/bin/bash

# Nor_darkstar/ConkyNeo
# This script is to get weather data from openweathermap.com in the form of a json file
# so that conky will still display the weather when offline even though it doesn't up to date

# Variables
# get your city id at https://openweathermap.org/find and replace
city_id=1625084

# you can use this or replace with yours
api_key=e46d6b1c945f2e9983f0735f8928ea2f

# choose between metric for Celcius or imperial for fahrenheit
unit=metric

# i'm not sure it will support all languange, 
lang=en

# Main command
url="api.openweathermap.org/data/2.5/weather?id=${city_id}&appid=${api_key}&cnt=5&units=${unit}&lang=${lang}"
curl ${url} -s -o ~/.cache/weather.json

# Extract temperature from JSON
cache_file="$HOME/.cache/weather.json"
temp=$(jq '.main.temp' "${cache_file}" 2>/dev/null | xargs printf "%.0f")

# Output with unit
if [ "$unit" = "metric" ]; then
    echo "${temp}°C"
else
    echo "${temp}°F"
fi

exit

