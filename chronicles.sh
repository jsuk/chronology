#!/usr/bin/env bash
cat <(echo "@startgantt") <(echo "projectscale yearly zoom 2") <(echo "Project starts 1900-01-01") <(cat thinker.csv | awk -F, '{ print "["$1"] starts "$2"-01-01 and ends "$3"-01-01"  }') <(echo "@endgantt") | grep -v -e BC -e Birth -e escart -e resent | plantuml -p > chronicles.svg
termux-open chronicles.svg
