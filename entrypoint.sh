#!/bin/sh -l

output=$(curl -H "Content-Type: application/json" \
                -H "Authorization: Bearer $1" \
                -H "Idempotency-Key: $GITHUB_RUN_ID" \
                --request POST \
                --data '{ "number": '"$2"' }' \
                https://public.ecologi.com/impact/trees)

echo "response=$output" >> $GITHUB_OUTPUT