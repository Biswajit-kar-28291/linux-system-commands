# Week 03 - Command Chaining, Redirection and Package Management

## 📌 Topics Covered

* Command Chaining (`;`, `&&`, `||`)
* File Descriptors (stdin, stdout, stderr)
* Output & Input Redirection
* Pipes (`|`)
* `/dev/null`
* Package Management in Linux
* `apt` and `dpkg` commands

---

# 🔹 1. Command Chaining

## 1.1 `;` (Sequential Execution)

Runs all commands one by one, regardless of success or failure.

```bash
pwd; ls; date
```

👉 Even if one command fails, the next will run.

---

## 1.2 `&&` (AND Operator)

Runs the next command **only if previous command succeeds**.

```bash
mkdir project && cd project
```

👉 If `mkdir` fails, `cd` will NOT run.

---

## 1.3 `||` (OR Operator)

Runs the next command **only if previous command fails**.

```bash
cd test || echo "Folder not found"
```

👉 Useful for error handling.

---

## 🔥 Combination Example

```bash
mkdir demo && cd demo || echo "Something failed"
```

---

# 🔹 2. File Descriptors

| Descriptor | Name   | Description      |
| ---------- | ------ | ---------------- |
| 0          | stdin  | Input to command |
| 1          | stdout | Normal output    |
| 2          | stderr | Error output     |

---

# 🔹 3. Output Redirection

## 3.1 `>` (Overwrite)

Stores output in a file (overwrites existing content).

```bash
ls > output.txt
```

---

## 3.2 `>>` (Append)

Adds output to end of file.

```bash
echo "Hello" >> output.txt
```

---

## 3.3 Redirect Errors (`2>`)

```bash
ls wrongfolder 2> error.txt
```

👉 Saves only error messages.

---

## 3.4 Separate stdout and stderr

```bash
command > output.txt 2> error.txt
```

---

## 3.5 Combine stdout + stderr

```bash
command > all.txt 2>&1
```

👉 Stores everything in one file.

---

# 🔹 4. Input Redirection

## `<` operator

```bash
wc -l < file.txt
```

👉 Takes input from file instead of keyboard.

---

# 🔹 5. Pipes (`|`)

Used to send output of one command as input to another.

```bash
ls | sort
```

```bash
cat file.txt | grep hello
```

👉 Very powerful for combining commands.

---

# 🔹 6. `/dev/null`

Special file that discards output (like a dustbin).

## Ignore normal output

```bash
ls > /dev/null
```

## Ignore error output

```bash
ls wrongfolder 2> /dev/null
```

## Ignore both

```bash
command > /dev/null 2>&1
```

---

# 🔹 7. Package Management

## What is a Package Manager?

A tool that helps to:

* Install software
* Update software
* Remove software
* Manage dependencies

---

# 🔹 8. Package Types

## DEB (Debian-based)

* Ubuntu
* Linux Mint

## RPM (RedHat-based)

* Fedora
* CentOS
* RHEL

---

# 🔹 9. `apt` (Advanced Package Tool)

Used in Ubuntu for managing packages.

---

## 9.1 Update package list

```bash
sudo apt-get update
```

👉 Refresh package information.

---

## 9.2 Upgrade packages

```bash
sudo apt-get upgrade
```

👉 Updates installed software.

---

## 9.3 Install package

```bash
sudo apt-get install git
```

---

## 9.4 Remove package

```bash
sudo apt-get remove git
```

---

## 9.5 Purge package

```bash
sudo apt-get purge git
```

👉 Removes package + config files.

---

## 9.6 Clean unused packages

```bash
sudo apt-get autoremove
```

---

## 9.7 Clear cache

```bash
sudo apt-get clean
```

---

# 🔹 10. `apt-cache` Commands

## Search package

```bash
apt-cache search python
```

## Show package details

```bash
apt-cache show -a git
```

## List all packages

```bash
apt-cache pkgnames
```

---

# 🔹 11. `dpkg` (Low-Level Package Manager)

Used for handling `.deb` files directly.

---

## 11.1 List installed packages

```bash
dpkg -l
```

---

## 11.2 Check package status

```bash
dpkg -s git
```

---

## 11.3 List files of package

```bash
dpkg -L git
```

---

## 11.4 Find package by file

```bash
dpkg -S /bin/ls
```

---

## 11.5 Install `.deb` file

```bash
sudo dpkg -i package.deb
```

---

# 🔹 12. Important Differences

## apt vs dpkg

| apt                  | dpkg                    |
| -------------------- | ----------------------- |
| High-level tool      | Low-level tool          |
| Handles dependencies | Does not handle well    |
| Uses repositories    | Uses local `.deb` files |

---

## `>` vs `>>`

| `>` Overwrite | `>>` Append |
| ------------- | ----------- |

---

## stdout vs stderr

| stdout | Normal output |
| ------ | ------------- |
| stderr | Error output  |

---

## `;` vs `&&` vs `||`

| Operator | Meaning        |   |             |
| -------- | -------------- | - | ----------- |
| `;`      | Run all        |   |             |
| `&&`     | Run if success |   |             |
| `        |                | ` | Run if fail |

---

# 🚀 Real-World Use

* Store command outputs into files
* Keep logs using `>>`
* Hide errors using `/dev/null`
* Use pipes to process data
* Install and manage software using `apt`
* Debug issues using `stderr` redirection

---

# ✅ Summary

In Week 3, you learned:

* How to combine multiple commands
* How to control output and errors
* How to use pipes for efficient workflows
* How Linux manages software using package managers
* Practical use of `apt` and `dpkg`

---
