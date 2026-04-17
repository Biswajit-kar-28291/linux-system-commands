# Week 1 - Linux System Commands

## 1. Terminal vs Shell
- Terminal = Interface
- Shell = Command interpreter

## 2. Basic Commands

### pwd
Shows current directory

### ls
Lists files
- ls -l → detailed
- ls -a → hidden files

### clear
Clears screen

### exit
Closes terminal

---

## 3. Help Commands

- man → manual
- which → command path
- type → command type
- whatis → short description
- apropos → search command

---

## 4. Filesystem

Root directory:
/
Important folders:
- /home
- /etc
- /bin
- /proc

---

## 5. File Types
- - → file
- d → directory
- l → link

---

## 6. Permissions

r = 4  
w = 2  
x = 1  

Example:
chmod 755 file.sh

---

## 7. File Operations

- touch → create file
- cp → copy
- mv → move/rename

---

## 8. Viewing Files

- cat → show content
- less → scroll view
- head → first lines
- tail → last lines
- wc → count

---

## 9. Redirection
overwrite

append

---

## 10. Links

Hard Link:
ln file1 file2

Soft Link:
ln -s file1 link

---

## 11. Inode
Stores metadata of file.

---

## 12. /proc
Virtual system info directory.