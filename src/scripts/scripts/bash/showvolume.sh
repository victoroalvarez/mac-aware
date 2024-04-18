#!/bin/bash
dunstify 'Current Volume:' $(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master))
