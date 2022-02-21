ls list files
cd change directory
less work eith text files
touch create files
cp copy files(cp file filer)(cp file -i filer)
(cp file... directory)(cp file dir)(cp -R dir1 dir2)
(cp *.txt text_files)(rm *~)
mv move files/rename
mkdir create directory
rm remove files
rmdir remove directory
*all file names
t* files that begin with t
t*.txt files that begin with t and end with txt
Data??? files that begin with Data followed by 3 ore characters
[abc]* file that begin with abc followed by other characters
[[:upper:]]* files that begin with upercase
BACKUP.
[[:digit:]]
[[:digit:]] any file that beg_ins with backup followed by two numerals
*[![:lower:]]any file that does not end with a lowercase
nano to view files and edit
cat to list files
grep search in file
alias create shortcut (-w whole word)
(-wi not be case sensitive)
(-win where it was found)
(-win -B search 5 print 5 lines before match)
(-win -A search 5 print 5 lines after match)
(-win -C search 5 print 5 lines before and after match)
(-win  search ./* Search directory)
(-win  search ./*txt Search txt)
(-winr search . Search directories)
(-wirl search . Search directoriesand return names)
(-wirc search . Search directories return namesand o of files)
( history | "search" | "search")
find . -type d -name find dirctory
find . -type f -name "*.py"
find . -type f -mmin -10 find file modified less than minutes
find . -type f -mmin +10 more than 
find . -type f -mtime +10 file modified mor than days
find . -type f -mtime -10
amin cmin
find . -size +50M greater tahn 5mb
find . -empty