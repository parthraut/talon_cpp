#include<vector>
#include<iostream>

int main () {
    return 0;
}

int printed_sum (std::vector<int> numbers) {
    int accumulator;
    accumulator += 1;

    const int hello_world = 5;
    int EXPRESSION = (5 + 6) - (7 / 8);
    int CONSTANT = ((5 * 2) - (6 / 2)) * 3;

    int number_list[5] = { 
        1,2,3,4 
    };
    
    int list_element = number_list[3];
    
    for (auto iterator = numbers.begin(); iterator != numbers.end(); ++iterator) {
        std::cout << *iterator << std::endl;
        accumulator = accumulator + *iterator;
    }

    if (list_element < 0) 
    {
         return 0; 
    }


    for (int counter = 0; counter <= 5; ++counter) {
        std::cout<<numbers[counter]<<std::endl;
        accumulator = accumulator + numbers[counter];
    }

    return accumulator;
    // PS THIS IS A COMMENT
}
