# Exercise 3: grep and Piping

## What I Learned
- grep: Search for text in files
- Piping (|): Send output from one command to another
- Combining commands together

## Exercise: grep and Pipes

### Step 1: grep basics
```bash
echo -e "ERROR: database\nWARNING: slow\nERROR: timeout\nINFO: done" > log.txt
grep "ERROR" log.txt
```

**Output:** Shows only lines with "ERROR"

### Step 2: Piping output
```bash
cat log.txt | grep "ERROR"
```

**Same output as Step 1, but different method:**
- `cat` outputs the file
- `|` pipes it to grep
- `grep` filters it

### Step 3: Chaining multiple commands
```bash
cat log.txt | grep "ERROR" | wc -l
```

**Output:** `2` (count of ERROR lines)

**Flow:**
1. cat outputs all lines
2. grep filters to ERROR only
3. wc -l counts the lines

## Why This Matters in DevOps

Analyzing production logs:
```bash
cat app.log | grep "ERROR" | tail -10
# Get the last 10 errors

cat app.log | grep "ERROR" | wc -l
# Count total errors

cat app.log | grep "Database connection" | cut -d: -f2
# Extract specific data
```

## Key Takeaway

Piping lets you chain commands together. Each does one thing, but together they're powerful.
