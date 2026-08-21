# level 0
commands used= ssh

# level 0-1
commands used= ls, cat
password found

# level 1-2
commands used= ls, cat ./
password found
normal cat cannot find file. So ./ is used.

# level 2-3
commands used= ls, cat "./"
password found
"" is used because filename contains spaces

# level 3-4
commands used= ls -a, cd, cat
password found
ls -a is used to find hidden files

# level 4-5
commands used= ls -h, cd, ls, file ./*, cat
password found
ls -h is used to find human readable files. files ./* is used to find all the files in the present directory

# level 5-6
commands used= ls, cd, find
password found
find . -type f  -size 1033c ! -executable is used. find is used to check current directery. -type f is used to find regular files. -size 1033c translates to 1033bytes. ! -executable means not executable.

# level 6-7
commands= find
Password
find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null is used
find / searches for files. 
type f is used to find regular files.
user bandit7 is used to find file owned by user bandit7
group bandit6 is used to find file owned by group bandit6
size 33c means size is 33bytes
2>/dev/null is used to hide the permission-denied error messages encountered while searching the whole server. 

# level 7-8
Two ways
Commands used= ls, cat, less data.txt, /
Password found.
Using cat will open a huge wall of files. So less data.txt is used.
Commands used= grep
Password found
grep helps to find matching txt. 
grep millionth data.txt looks for that particular in the file

# level 8-9
Commands used= ls, sort, uniq -u
Password found.
sort produces sorted lines.
| tells to take the output of the command on the left and give it to the command on the right. 
uniq -u is used to find single occurrence lines

# level 9-10
Commands used=ls, strings, grep
Password found
strings used to print the sequences of printable characters in files
grep is used to find the matching text ===

# level 10-11
Commands used=ls, base64 
Password found.
base64 contains encoded data. Using base64 -d helps to decode it.

# level 11-12
Commands used= ls, tr
Password found
tr translates characters.
A-Za-z are the characters i wanted translate[uppercase and lowercase]
‘N-ZA-Mn-za-m’ is the ROT13mapping. Each letter is replaced by the next 13th letter.
< data.txt → takes data.txt as the input.

# level 12-13
Commands used= mktemp, cp, ls, head, xxd, file, mv, gzip, bzip2, tar, cat
Password found

-Created temp directory(mktemp -d)
-Entered the directory(cd)
-copied  the file data.txt(cp ~/data.txt) [~ for taking from home directory and . for pasting in current directory]
-Head is used to see the beginning of a file.
-We see hexadecimal representations of bytes. 
-Xxd -r to convert hexdump to actual binary file
[Xxd- a tool for working with hexadecimal representations.]
[-r for reversing]
[data.txt input and data output]
-File is used to understand type of file
-mv to rename file and give appropriate extension.
-gzip -d to decompress the compressed gzip file
-bzip2 -d to decompress bzip2 files.
-tar -xf to extract tar archives.[x=extract and f=which file to work on]
-Repeated file and the appropriate decompression/extraction command for each layer because the file was repeatedly compressed.
-file identified the output as ASCII text
-cat to open the file and get password.


# level 13-14
Commands used=ls, ssh, scp, exit
Password found
Found hint with ls
exit bandit
Used scp to copy hint from bandit to local computer
Used hint as private key to log in to bandit14

# level 14-15
Commands used= nc, exit
password found
nc to go to localhost 30000
Gave password of bandit 14 to get password of bandit15









