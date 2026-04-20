# 📘 Week 04 - Pattern Matching (Regex & grep)

## 📌 Overview

This week focuses on **Pattern Matching using Regular Expressions (Regex)** and the powerful Linux command **grep**.

Pattern matching is used to **search, filter, and extract text** based on specific patterns. It is widely used in **log analysis, data cleaning, validation, and automation**.

---

## 🎯 Learning Objectives

* Understand **Pattern Matching**
* Learn **Regular Expressions (Regex)**
* Use **grep command effectively**
* Understand **BRE (Basic Regex)** and **ERE (Extended Regex)**
* Work with **special characters and character classes**
* Apply **regex in real-world scenarios**

---

## 🛠️ Tools & Commands Used

* `grep`
* `egrep` / `grep -E`
* Linux Terminal

---

## 📂 Project Structure

```
Week-04-Pattern-Matching-Regex-Grep/
│── README.md
│── week4-pattern-matching.sh
│── sample.txt (auto-generated in script)
```

---

## 🔤 Key Concepts

### 1. Pattern Matching

Finding text that matches a specific pattern.

Example:

```bash
grep "error" file.txt
```

---

### 2. Regular Expressions (Regex)

A pattern language used to match text.

Example:

```bash
grep "[0-9]" file.txt
```

➡ Matches any digit

---

### 3. BRE vs ERE

| Feature         | BRE     | ERE           |
| --------------- | ------- | ------------- |
| Default in grep | ✅       | ❌             |
| Needs escape    | Yes     | No            |
| Operators       | Limited | More powerful |

Example:

```bash
# BRE
grep "a\{2,3\}" file.txt

# ERE
grep -E "a{2,3}" file.txt
```

---

## 🔣 Special Characters

| Symbol | Meaning          |
| ------ | ---------------- |
| `.`    | Any character    |
| `*`    | Zero or more     |
| `[]`   | Character set    |
| `^`    | Start of line    |
| `$`    | End of line      |
| `\`    | Escape character |

---

## 🔥 ERE Operators

| Symbol  | Meaning     |    |
| ------- | ----------- | -- |
| `+`     | One or more |    |
| `?`     | Optional    |    |
| `{n,m}` | Range       |    |
| `       | `           | OR |

Example:

```bash
grep -E "cat|dog" file.txt
```

---

## 🔠 Character Classes

| Class         | Meaning           |
| ------------- | ----------------- |
| `[[:digit:]]` | Numbers           |
| `[[:alpha:]]` | Letters           |
| `[[:alnum:]]` | Letters + Numbers |
| `[[:lower:]]` | Lowercase         |
| `[[:upper:]]` | Uppercase         |

---

## 🔁 Backreferences

Used to match repeated patterns.

Example:

```bash
grep "\(hello\).*\1" file.txt
```

➡ Matches lines where "hello" appears twice

---

## 🧪 Practice Script

Run the script:

```bash
chmod +x week4-pattern-matching.sh
./week4-pattern-matching.sh
```

This script demonstrates:

* Basic grep
* Regex patterns
* BRE & ERE usage
* Real-world examples

---

## 💡 Real-World Use Cases

* Log file analysis
* Email validation
* Data filtering
* Searching files
* Automation scripts

---

## 🚀 Key Takeaways

* Regex makes text processing powerful and fast
* grep is essential for developers and system engineers
* Understanding patterns improves debugging and data handling

---

## 🧑‍💻 Author

**Biswajit Kar**

* B.Tech CSE Student
* IIT Madras BS in Data Science
* Aspiring Python Developer

🔗 GitHub: https://github.com/Biswajit-kar-28291

---

## ✅ Commit Message

```
Week04: Added pattern matching concepts with regex and grep practice script
```
