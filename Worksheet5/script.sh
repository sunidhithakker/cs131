#!/bin/bash
IFS=$'\r\n'
lines=$(awk -F ',' '$8 == "United States" {print}' 'Global YouTube Statistics.csv')
for i in $lines
do
        category=$(echo "$i" | awk -F ',' '{print $5}')
        case $category in
                Music)
                        echo $i >> United_States/Music.txt
                        ;;
                Entertainment)
                        echo $i >> United_States/Entertainment.txt
                        ;;
                Gaming)
                        echo $i >> United_States/Gaming.txt
                        ;;
                Comedy)
                        echo $i >> United_States/Comedy.txt
                        ;;
                *)
                        ;;
        esac
done

