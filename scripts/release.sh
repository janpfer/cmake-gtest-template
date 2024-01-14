#!/bin/bash

# Read the current version tag from the remote repository
current_version=$(git ls-remote --tags origin | awk -F '/' '{print $NF}' | grep -Eo '^v[0-9]+\.[0-9]+\.[0-9]+$' | sort -V | tail -1)

# Display the current version
echo "Current version is: $current_version"

# Ask whether to increase to the next major release
read -p "Increase to next major release? (Y/N): " increase_major

if [[ $increase_major == "Y" || $increase_major == "y" ]]; then
  # Increase to the next major release
  new_version=$(awk -F. '{print $1+1 ".0.0"}' <<< "$current_version")
else
  # Prompt for a new version in the X.Y.Z format
  read -p "Enter new version (X.Y.Z): " new_version

  # Validate the new version format
  if ! [[ $new_version =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "Invalid version format. Exiting."
    exit 1
  fi
fi

# Stage and commit all uncommitted changes
git add .
read -p "Enter commit message (default: rollout version $new_version): " commit_message
commit_message=${commit_message:-"rollout version $new_version"}
git commit -m "$commit_message"

# Tag the commit with the new version
git tag -a "v$new_version" -m "Version $new_version"

# Push the commit and tags to the repository
git push --follow-tags
#git push origin main
#git push origin "v$new_version"

echo "Version $new_version has been staged, committed, tagged, and pushed."
