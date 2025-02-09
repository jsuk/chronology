#!/usr/bin/env bash
#set -ex
ARG='{ "contents": [{ "parts":[{"text": "full name and birth year and death year and occupations and nationality and birth place and death place of '$@' separated by comma in plain text per each person. in case the sub results include commas, replace those commas with slashes only in occupations or birth place or death place"}] }] }'
ARG_LEN='Content-Length: '${#ARG}
curl -s "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key="`cat .gemini_key.txt` \
-H 'Content-Type: application/json' \
-X POST \
-d "$ARG" | jq -r '.candidates[].content.parts[0].text' #| xargs -L1 # bash -c 'echo $0 $@' $@,
