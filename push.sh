#!/bin/bash

# Navigate to the script's directory (ensuring it's run from the correct folder)
cd "$(dirname "$0")"

# Check if the folder is a git repository
if [ ! -d .git ]; then
  echo "This is not a Git repository. Initialize Git with 'git init' first."
  exit 1
fi

# Add all changes
git add .

# Prompt for commit message
echo "Enter commit message:"
read commit_message

# Commit changes
git commit -m "$commit_message"

# Push to GitHub
git push origin main

echo "Changes pushed successfully!"