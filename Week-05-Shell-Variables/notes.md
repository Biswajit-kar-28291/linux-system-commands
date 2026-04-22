# Week 05 - Shell Variables

This week is about **shell variables in Bash**. A shell variable stores data like text, numbers, paths, command output, or lists. They help us automate repeated work in terminal scripts.

---

## 1) Creating a variable

```bash
name="Biswajit"
course="Shell Variables"
```

### Rules
- No space around `=`
- Variable names can use letters, numbers, and `_`
- A variable name cannot start with a number

### Example
```bash
city="Kolkata"
echo $city
```

Output:
```bash
Kolkata
```

---

## 2) Using variable values

```bash
echo $name
echo ${name}
```

Use braces when joining text:

```bash
file="report"
echo "${file}.txt"
```

Why useful: without braces, Bash can get confused when extra characters are attached to the variable.

---

## 3) Exporting a variable

```bash
export city="Kolkata"
```

or

```bash
city="Kolkata"
export city
```

### Meaning
`export` makes the variable available to child shells or programs.

### Real example
If you open another bash process, it can read exported variables.

---

## 4) Removing a variable

```bash
unset city
```

To empty only the value:

```bash
city=
```

Difference:
- `unset city` removes the variable
- `city=` keeps the variable but makes it empty

---

## 5) Testing whether a variable is set

```bash
[[ -v city ]]
echo $?
```

Return codes:
- `0` = success, variable exists
- `1` = failure, variable does not exist

To test if a variable is not set:

```bash
[[ -z ${city+x} ]]
echo $?
```

---

## 6) Default values

### Show default if variable is missing
```bash
echo ${username:-Guest}
```

### Set default if variable is missing
```bash
echo ${username:=Guest}
```

### Show another value only if variable is set
```bash
echo ${username:+Already set}
```

### Example
```bash
name=""
echo ${name:-Student}
```

This is useful in scripts when user input may be missing.

---

## 7) Length of variable value

```bash
word="Hello"
echo ${#word}
```

Output:
```bash
5
```

---

## 8) String slicing

```bash
text="HelloWorld"
echo ${text:5:5}
```

Output:
```bash
World
```

Meaning:
- Start at index `5`
- Take `5` characters

---

## 9) Pattern removal

```bash
text="apple-banana-mango"
echo ${text#a*-}
echo ${text##*-}
echo ${text%-*}
echo ${text%%-*}
```

### Meaning
- `#` remove shortest match from start
- `##` remove longest match from start
- `%` remove shortest match from end
- `%%` remove longest match from end

---

## 10) Pattern replacement

```bash
text="apple banana apple"
echo ${text/apple/orange}
echo ${text//apple/orange}
```

### Meaning
- First command replaces first match only
- Second command replaces all matches

### Position-based replacement

```bash
path="/home/student/docs"
echo ${path/#\/home/\/mnt}
echo ${path/%docs/files}
```

---

## 11) Changing case

```bash
word="bIsWaJiT"
echo ${word,}
echo ${word,,}
echo ${word^}
echo ${word^^}
```

### Meaning
- `${word,}` first character to lower case
- `${word,,}` all characters to lower case
- `${word^}` first character to upper case
- `${word^^}` all characters to upper case

---

## 12) Restricting variable value types

```bash
declare -i count=10
declare -l lower_text="HELLO"
declare -u upper_text="hello"
declare -r company="OpenAI"
```

### Meaning
- `-i` integer only
- `-l` lowercase only
- `-u` uppercase only
- `-r` readonly

Remove restrictions:

```bash
declare +i count
declare +l lower_text
declare +u upper_text
```

Readonly cannot be safely removed for normal script use.

---

## 13) Indexed arrays

```bash
declare -a fruits
fruits[0]="apple"
fruits[1]="banana"
```

Access values:

```bash
echo ${fruits[0]}
echo ${fruits[@]}
echo ${!fruits[@]}
echo ${#fruits[@]}
```

Add an item:

```bash
fruits+=("grape")
```

Delete an item:

```bash
unset 'fruits[1]'
```

### Real use
Arrays are useful for storing file names, usernames, course names, or multiple commands.

---

## 14) Associative arrays

Associative arrays use **keys** instead of numeric indexes.

```bash
declare -A student
student[name]="Biswajit"
student[course]="CSE"
```

Use:

```bash
echo ${student[name]}
echo ${student[@]}
echo ${!student[@]}
echo ${#student[@]}
```

Delete key:

```bash
unset 'student[course]'
```

### Real use
Very useful for key-value data like:
- student details
- config values
- API settings

---

## 15) Frequently used shell variables

```bash
echo $HOME
echo $USER
echo $HOSTNAME
echo $PWD
echo $PATH
```

### Meaning
- `$HOME` = home directory
- `$USER` = current username
- `$HOSTNAME` = computer name
- `$PWD` = present working directory
- `$PATH` = list of command search locations

To list environment variables:

```bash
printenv
env
set
```

---

## 16) Special shell variables

```bash
echo $0
echo $$
echo $?
echo $-
```

### Meaning
- `$0` = shell or script name
- `$$` = current shell process ID
- `$?` = exit code of last command
- `$-` = shell flags currently active

---

## 17) Process control basics

Run a command in background:

```bash
sleep 10 &
```

Useful commands:

```bash
jobs
fg
top
kill <pid>
```

### Meaning
- `jobs` shows background jobs
- `fg` brings a background job to foreground
- `top` shows running processes
- `kill` stops a process using PID

---

## 18) Exit codes

```bash
ls
 echo $?
```

Common exit codes:
- `0` = success
- `1` = failure
- `2` = misuse of shell command
- `126` = command cannot execute
- `127` = command not found
- `130` = stopped using `Ctrl + C`
- `137` = killed using `kill -9`

---

## 19) Bash flags

```bash
echo $-
```

Common flags from your PDF:
- `h` = locate and hash commands
- `B` = brace expansion enabled
- `i` = interactive mode
- `m` = job control enabled
- `H` = history substitution enabled
- `s` = commands read from standard input
- `c` = commands read from arguments

---

## 20) Why shell variables are important

Shell variables help you:
- store data in scripts
- reuse values many times
- make scripts dynamic
- manage environment settings
- work with arrays and key-value data
- control command results using exit codes

---

## 21) Best practice examples

### Example 1: greet a user
```bash
name=${1:-Guest}
echo "Hello, $name"
```

### Example 2: check command success
```bash
mkdir test_folder
echo $?
```

### Example 3: use array in loop
```bash
fruits=(apple banana mango)
for item in "${fruits[@]}"; do
  echo "$item"
done
```

---

## 22) Files included in this practice set

- `practice/01_basic_variables.sh`
- `practice/02_string_operations.sh`
- `practice/03_arrays_and_special_variables.sh`
- `notes.md`

Run them using:

```bash
bash practice/01_basic_variables.sh
bash practice/02_string_operations.sh
bash practice/03_arrays_and_special_variables.sh
```

---

## 23) Final revision points

Before moving to the next week, make sure you understand:
- how to create and use variables
- difference between unset and empty value
- export vs normal variable
- default value operators `:-`, `:=`, `:+`
- string length and slicing
- pattern remove and replace
- case conversion
- declare restrictions
- indexed and associative arrays
- shell special variables like `$?`, `$$`, `$0`
- background jobs and exit codes

