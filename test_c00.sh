test()
{
    name=$1
    result=$2

    echo "***********************************************************************************"
    echo $name
    echo "***********************************************************************************"
    echo $result
    echo "***********************************************************************************"
    ./$name/a.out
    echo "***********************************************************************************"
}

test ex00 "character passed as a parameter"
test ex01 "displays the alphabet in lowercase, on a single line, by ascending order, starting from the letter ’a’"
test ex02 "displays the alphabet in lowercase, on a single line, by descending order, starting from the letter ’z’"
test ex03 "displays all digits, on a single line, by ascending order"
test ex04 "displays ’N’ or ’P’ depending on the integer’s sign entered as a parameter"
test ex05 "displays all different combinations of three different digits in ascending order"
test ex06 "displays all different combination of two digits between 00 and 99"
test ex07 "displays the number entered as a parameter"
test ex08 "displays all different combinations of n numbers by ascending order"