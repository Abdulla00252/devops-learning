# Exercise 2: Standard Streams (stdout, stderr, redirection)

## What I Learned
- stdout (1): Normal output
- stderr (2): Error output
- Redirection (>, 2>, 2>&1)
- Why separating streams matters

## Exercise: Test Standard Streams

### Step 1: Create a test log file
```bash
echo -e "ERROR: database\nWARNING: slow\nERROR: timeout\nINFO: done" > log.txt
cat log.txt
```

**Output:**

cat > 02-standard-streams.md << 'EOF'
# Exercise 2: Standard Streams (stdout, stderr, redirection)

## What I Learned
- stdout (1): Normal output
- stderr (2): Error output
- Redirection (>, 2>, 2>&1)
- Why separating streams matters

## Exercise: Test Standard Streams

### Step 1: Create a test log file
```bash
echo -e "ERROR: database\nWARNING: slow\nERROR: timeout\nINFO: done" > log.txt
cat log.txt
```

**Output:**

### Step 2: Test stderr redirection
```bash
ls /nonexistent 2> error.txt
cat error.txt
```

**Output in error.txt:** `ls: cannot access '/nonexistent': No such file or directory`

**Learning:** Using `2>` redirects errors to a file instead of showing on screen.

### Step 3: Understand the difference
```bash
ls /home > output.txt              # Normal output to file
ls /nonexistent 2> errors.txt      # Errors to file
ls /home 2>&1 > all.txt            # Both to file
```

## Why This Matters in DevOps

When you run scripts in production:
```bash
./backup.sh > backup.log 2> backup-errors.log
```

- Normal output → backup.log (what worked)
- Errors → backup-errors.log (what failed)
- You can monitor both separately

## Key Takeaway

Separating stdout and stderr lets you handle success and failure differently.

cat > 02-standard-streams.md << 'EOF'
# Exercise 2: Standard Streams (stdout, stderr, redirection)

## What I Learned
- stdout (1): Normal output
- stderr (2): Error output
- Redirection (>, 2>, 2>&1)
- Why separating streams matters

## Exercise: Test Standard Streams

### Step 1: Create a test log file
```bash
echo -e "ERROR: database\nWARNING: slow\nERROR: timeout\nINFO: done" > log.txt
cat log.txt
```

**Output:**

### Step 2: Test stderr redirection
```bash
ls /nonexistent 2> error.txt
cat error.txt
```

**Output in error.txt:** `ls: cannot access '/nonexistent': No such file or directory`

**Learning:** Using `2>` redirects errors to a file instead of showing on screen.

### Step 3: Understand the difference
```bash
ls /home > output.txt              # Normal output to file
ls /nonexistent 2> errors.txt      # Errors to file
ls /home 2>&1 > all.txt            # Both to file
```

## Why This Matters in DevOps

When you run scripts in production:
```bash
./backup.sh > backup.log 2> backup-errors.log
```

- Normal output → backup.log (what worked)
- Errors → backup-errors.log (what failed)
- You can monitor both separately

## Key Takeaway

Separating stdout and stderr lets you handle success and failure differently.

