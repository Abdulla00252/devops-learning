# Bandit Levels 0-4

## Level 0 → 1

**Goal:** Log in via SSH and read the readme file.

**Commands used:**
```bash
ssh bandit0@bandit.labs.overthewire.org -p 2220
ls
cat readme
```

**Lesson:** SSH basics. `ls` lists files, `cat` reads them.

---

## Level 1 → 2

**Goal:** Read a file named `-`.

**Commands used:**
```bash
cat ./-
```

**Lesson:** Filenames starting with `-` look like flags. Prefix with `./` to disambiguate.
