test()
{
    exam=$1
    file=$2
    result=$3

    echo " "
    echo "**************************************************"
    echo $exam
    echo "**************************************************"
    echo " "

    echo expect answer
    echo $result
    echo result

    bash ./$exam/$file | cat -e
    echo "**************************************************"
}

test ex01 print_groups.sh "daemon,bin$>"
touch find_sh.sh
test ex02 find_sh.sh "find_sh"
test ex03 count_files.sh "number"
test ex04 MAC.sh "MAC ADDRESS"
echo " "
echo "**************************************************"
echo ex05
echo "**************************************************"
echo " "
ls -l ./ex05
test ex06 skip.sh "every other line"
test ex07 r_dwssap.sh "sstq_, sorebrek_brk_, revreswodniw_, revressta_"
FT_NBR1=\"\"!\"\"!\"\"!\"\"!\"\"!\"\"
FT_NBR2=dcrcmcmooododmrrrmorcmcrmomo
test ex08 add_chelou.sh "Segmentation fault"