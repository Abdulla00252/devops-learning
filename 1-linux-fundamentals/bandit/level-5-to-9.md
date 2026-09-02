# Bandit Levels 5–9

## Level 5 → 6
**Goal:** Find a file with specific properties in the inhere directory.

**Commands used:**
```bash
find . -type f -size 1033c ! -executable
cat ./inhere/maybehereXX/.fileX
```

**Lesson:** `find` filters: `-type f` (regular files), `-size 1033c` (exact bytes, the `c` is critical), `! -executable` (NOT executable). All filters AND together.

## Level 6 → 7
**Goal:** Find a file owned by user bandit7, group bandit6, 33 bytes.

**Commands used:**
```bash
find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
```

**Lesson:** Search the whole filesystem from `/`. `2>/dev/null` silences permission errors so output stays clean.

## Level 7 → 8
**Goal:** Find the password next to the word "millionth" in data.txt.

**Commands used:**
```bash
grep millionth data.txt
```

**Lesson:** `grep PATTERN FILE` — pattern first, file second. Search for "needle" in "haystack."

## Level 8 → 9
**Goal:** Find the only line in data.txt that occurs exactly once.

**Commands used:**
```bash
sort data.txt | uniq -u
```

**Lesson:** `uniq` only sees duplicates if they're adjacent — that's why we sort first. `-u` means "show only lines that appear exactly once."

## Level 9 → 10
**Goal:** Find a human-readable string preceded by several `=` characters in a mostly-binary file.

**Commands used:**
```bash
strings data.txt | grep =====
```

**Lesson:** `strings` extracts printable sequences from binary files. Pipe through `grep` to filter further.
