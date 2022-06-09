test()
{
    exam=$1
    echo " "
    echo "**************************************************"
    echo $exam
    echo "**************************************************"
    echo " "
}

expect()
{
    expected=$1
    echo expect answer
    echo $expected
    echo result
}
test clean
rm ./ex01/testShell00
rm -d ./ex02/test0
rm ./ex02/test1
rm -d ./ex02/test2
rm ./ex02/test3
rm ./ex02/test4
rm ./ex02/test5
rm ./ex02/test6

test ex00
expect "Z"
cat ./ex00/z

test ex01
expect "-r--r-xr-x 1 XX XX 40 Jun 1 23:42 testShell00"
tar -pxf ./ex01/testShell00.tar -c ./ex01
ls -l ./ex01

test ex02
echo "drwx--xr-x 2 XX XX XX Jun 1 20:47 test0
-rwx--xr-- 1 XX XX 4 Jun 1 21:46 test1
dr-x---r-- 2 XX XX XX Jun 1 22:45 test2
-r-----r-- 2 XX XX 1 Jun 1 23:44 test3
-rw-r----x 1 XX XX 2 Jun 1 23:43 test4
-r-----r-- 2 XX XX 1 Jun 1 23:44 test5
lrwxrwxrwx 1 XX XX 5 Jun 1 22:20 test6 -> test0"
echo "**************************************************"
tar -pxf ./ex02/exo2.tar -c ./ex02
ls -l ./ex02

test ex03
expect ssh
cat ./ex03/id_rsa_pub

test ex04
expect "the command line that will list all files and directories in your
current directory (except for hidden files or any file that starts by a dot - yes, that
includes double-dots), separated by a comma, by order of modification date. Make
sure the directory’s names are followed by a slash character"
bash ./ex04/midLS

test ex05
expect "ids of the last 5 commits of your git repo"
bash ./ex05/git_commit.sh | cat -e

test ex06
expect "lists all the existing files
ignored by your GiT repository"
touch 1234567890
echo "1234567890" > .gitignore
bash ./ex06/git_ignore.sh | cat -e 

test ex07
expect "result like this"
echo "Episode V, A NEW H0PE It is a period of civil war
Rebel spaceships, striking from a hidden base, have won their first victory against the evil Galactic Empire. 
During the battle, Rebel spies managed to steal secret plans to the Empire's ultimate weapon, the STAR DEATH, an armored space station with enough power to destroy an entire planet.


Pursued by the Empire's sinister agents,
Princess Mehdi races home aboard her starship, custodian of the stolen plans that can save her people and restore the dictatorship to the galaxie..



"
cat ./ex07/b

test ex08
expect "clean test~ and #test# file"
touch ./ex08/test~
touch ./ex08/#test#
bash ./ex08/clean ./ex08

test ex09
expect "42 file"
echo "*****************************************42" > ./ex09/magic_test
file -m ./ex09/ft_magic ./ex09/magic_test