# 1. Linux Fundamentals

**Status:** Completed  ✓
**Duration:** 2-3 weeks  
**Key Skills:** File systems, permissions, users, terminal proficiency

## What I Learned

Linux is the foundation of DevOps. I mastered:

### Core Concepts
- **File System Architecture** - Everything in Linux is organized in a tree (/, /etc, /var/log, /home)
- **Permissions Model** - Security through rwx bits (755, 644, 600) and user/group ownership
- **Users & Groups** - Multi-user security: apps run as specific users (www-data, mysql, not root)
- **Terminal Proficiency** - Confident navigating without GUI, debugging issues

### Commands Mastered
- Navigation: `pwd`, `cd`, `ls -la`
- File operations: `touch`, `echo`, `cat`, `cp`, `mv`, `rm`, `mkdir`
- Permissions: `chmod`, `chown`
- Searching: `grep`, `head`, `tail`, `find`
- Text editing: `vim`

## Why This Matters in DevOps

- **Deployment:** Control file permissions on production servers
- **Security:** Permissions prevent unauthorized access to secrets
- **Debugging:** Read logs, diagnose permission errors
- **Automation:** Scripts run with specific user permissions

## Exercises & Evidence

See `/exercises/` folder for detailed work.

## Real Learning

I understand:
- WHY chmod 755 is different from 644
- WHY apps run as specific users, not root
- HOW Linux checks permissions (owner → group → others)
- WHEN to use absolute vs relative paths

## Next Module: Bash Scripting

Using these fundamentals to build automated scripts.
