# Bandit Levels 10–12

## Level 10 → 11
**Goal:** Decode a base64-encoded file.

**Commands used:**
```bash
base64 -d data.txt
```

**Lesson:** Base64 represents binary as 64 safe characters. `-d` decodes; without it, base64 encodes.

## Level 11 → 12
**Goal:** Decode ROT13 cipher.

**Commands used:**
```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

**Lesson:** `tr` translates char-by-char. ROT13 shifts each letter 13 positions; running it twice returns the original.
