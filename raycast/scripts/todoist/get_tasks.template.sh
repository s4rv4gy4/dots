#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title get todoist tasks
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon todoist.png
# @raycast.packageName todoist

# Documentation:
# @raycast.description get today's todoist tasks
# @raycast.author s4rv4gy4
# @raycast.authorURL https://github.com/s4rv4gy4

curl --fail --silent --show-error --location --request GET \
    https://api.todoist.com/api/v1/tasks/filter?query=today \
    --header "Authorization: Bearer $(op read op://main/todoist/token)" \
    | jq --raw-output '.results.[] | "[\(.priority)] \(.due.string) ?? \(.content)"'
