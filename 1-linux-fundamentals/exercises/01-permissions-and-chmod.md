# Exercise 1: Permissions and chmod

## What I Learned
- File permissions: owner/group/others
- Octal notation (644, 755, 444)
- How to change permissions with chmod
- Why permissions matter for security

## Exercise: Test Permissions In Action

### Step 1: Create a test file
```bash
echo "secret data" > myfile.txt
ls -la myfile.txt
```

**Output:** `-rw-r--r-- 1 abdulla abdulla 12 Sep  2 23:28 myfile.txt`

**Understanding:** 
- Owner (abdulla): rw- (read, write)
- Group: r-- (read only)
- Others: r-- (read only)
- Octal: 644

### Step 2: Remove write permission
```bash
chmod 444 myfile.txt
ls -la myfile.txt
echo "try to modify" >> myfile.txt
```

**Output:** `Permission denied`

**Learning:** Even the owner cannot modify a file if write permission is removed.

### Step 3: Restore permission
```bash
chmod 644 myfile.txt
echo "now it works" >> myfile.txt
cat myfile.txt
```

**Output:** Success - file modified

## Why This Matters in DevOps

In production, you use chmod to:
- Make scripts executable: `chmod 755 deploy.sh`
- Protect secrets: `chmod 600 database.password`
- Prevent accidental changes: `chmod 444 config.conf`

## Key Takeaway

Permissions aren't just features - they're security. They protect systems from accidental and malicious changes.
