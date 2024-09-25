#!/bin/bash

# Navigate to the Projekty directory
cd "Projekty" || exit

# Loop through all subdirectories
for dir in */ ; do
    # Check if the directory is a Git repository
    if [ -d "$dir/.git" ]; then
        # Enter the subdirectory
        cd "$dir" || continue

        # Check for uncommitted changes
        uncommitted_changes=$(git status --porcelain)

        # Check if local commits need to be pushed
        upstream=$(git rev-parse --abbrev-ref --symbolic-full-name @{u} 2>/dev/null)
        if [ $? -ne 0 ]; then
            # No upstream, so commits are not pushed
            ahead_commits="no upstream"
        else
            # Get the number of commits ahead of the upstream
            ahead_commits=$(git rev-list --count @{u}..HEAD)
        fi

        # Get the date of the last pushed commit
        if [ -n "$upstream" ]; then
            last_pushed_commit=$(git rev-parse "$upstream")
            if [ $? -eq 0 ]; then
                last_pushed_date=$(git show -s --format=%ci "$last_pushed_commit")
            else
                last_pushed_date="N/A"
            fi
        else
            last_pushed_date="No upstream"
        fi

        # ANSI escape codes for italics and grey color
        italics_grey="\033[3m\033[90m"
        reset_formatting="\033[0m"

        # Determine the status symbol
        if [ -n "$uncommitted_changes" ] || [ "$ahead_commits" != "0" ]; then
            echo -e "❗ $dir [${italics_grey}${last_pushed_date}${reset_formatting}]"
        else
            echo -e "✅ $dir [${italics_grey}${last_pushed_date}${reset_formatting}]"
        fi

        # Return to the parent directory
        cd ..
    fi
done