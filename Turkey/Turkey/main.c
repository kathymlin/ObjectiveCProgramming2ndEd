//
//  main.c
//  Turkey
//
//  Created by Kathy Lin on 10/22/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // delcare the variable called 'weight of type float
    float weight;
    
    // put a number in that variable
    weight = 12.4;
    
    // log it to the user
    printf("the turkey weighs %f.\n", weight);
    
    // delcare another variable of type float
    float cookingTime;
    
    // calcuate the cooking time and store it in the variable. In this case '*' means 'multiplied by'
    cookingTime = 15.0 + 15.0 * weight;
    
    // log that to the user
    printf("Cook it for %f minutes.\n", cookingTime);
    
    // end this function and indicate success
    return 0; 
}
