#!/bin/bash

LOC="$1"
# HTML encode string as %20
LOCATION=$(sed -e "s/ /%20/g" <<<"$LOC")
content=$(curl -sS "https://api.openweathermap.org/data/2.5/weather?q=Athens&APPID=<appid>&units=metric")
ICON=$(curl -s 'https://wttr.in/?format=1' | sed 's/[+0-9a-cA-Z°-]//g' )
TEMP=$(echo $content | jq -r '. | "\(.main.temp)°"' | sed 's/"//g')
TOOLTIP=$(echo $content | jq -r '. | "\(.main.temp)°\(.weather[0].main),\nfeels like \(.main.feels_like)"' | sed 's/"//g')
CLASS=$(echo $content | jq .skytext)
echo '{"text": "'$TEMP'", "tooltip": "'$ICON $TOOLTIP'", "class": '$CLASS' }'

