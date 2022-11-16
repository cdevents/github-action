#!/bin/sh

set -e

echo "Sending CDEvent";

echo "source: $INPUT_SOURCE"
echo "subject_id: $INPUT_SUBJECT_ID"
echo "subject_pipeline_name: $INPUT_SUBJECT_PIPELINE_NAME"
echo "subject_url: $INPUT_SUBJECT_URL"

publish=$(echo 'hi')

echo "$publish" >> "${HOME}/${GITHUB_ACTION}.log"

# Write output to STDOUT
echo "$output"
