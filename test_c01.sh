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

test ex00 "that takes a pointer to int as a parameter, and sets the value "42" to that int"
test ex01 "takes a pointer to pointer to pointer to pointer to pointer to pointer to pointer to pointer to pointer to int as a parameter and sets the value "42" to that int"
test ex02 "swaps the value of two integers whose addresses are entered as parameters"
test ex03 "divides parameters a by b and stores the result in the int pointed by div. It also stores the remainder of the division of a by b in the int pointed by mod."
test ex04 "divides parameters a by b. The result of this division is stored in the int pointed by a. The remainder of the division is stored in the int pointed by b."
test ex05 "displays a string of characters on the standard output"
test ex06 "counts and returns the number of characters in a string"
test ex07 "reverses a given array of integer"
test ex08 "sort number by ascending order"