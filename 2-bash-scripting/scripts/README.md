# Bash Scripting Challenges

## Overview
Four practical Bash automation scripts built during CoderCo DevOps Academy Module 2.

## Challenges Completed

### Challenge 1: Arithmetic Calculator (slice.sh)
**What it does:** Performs +, -, *, / on two numbers with divide-by-zero error handling.
**Key learning:** Variables, parameters, arithmetic expansion, conditionals.
**Usage:** `./slice.sh 10 5`

### Challenge 2: File Operations (challenge2.sh)
**What it does:** Creates a directory, file with current date, and displays contents.
**Key learning:** Command substitution, file creation, directory operations.
**Usage:** `./challenge2.sh`

### Challenge 3: File Permission Checker (challenge3.sh)
**What it does:** Tests if a file exists and checks readable/writable/executable permissions.
**Key learning:** Nested conditionals, file test operators (-f, -r, -w, -x).
**Usage:** `./challenge3.sh /etc/passwd`

### Challenge 4: Backup Script (challenge4.sh)
**What it does:** Backs up all .txt files to a timestamped directory with file counting.
**Key learning:** For loops, user input (read), timestamp generation, file iteration.
**Usage:** `./challenge4.sh` (prompts for directory)

## Key Learnings
1. **Variables are case-sensitive** — `NAME` ≠ `name`
2. **Every script needs shebang** — `#!/bin/bash` must be first line
3. **Always chmod +x** — scripts need execute permission
4. **Command substitution** — `$(command)` runs commands and captures output
5. **Loops automate repetition** — for loops iterate, while loops repeat conditionally

## One Challenge Overcome
**Quote escaping in vim:** Learning to distinguish between single quotes (literal), double quotes (variable expansion), and backticks (command execution) took practice but is fundamental to Bash.

## Why Bash Matters in DevOps
Every automation in DevOps eventually becomes a Bash script. CI/CD pipelines, container entrypoints, deployment scripts, monitoring — they're all driven by shell scripts. Bash is the foundation of infrastructure automation.
