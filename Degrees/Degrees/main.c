//
//  main.c
//  Degrees
//  Chapter 5, Page 37
//
//  Created by Kathy Lin on 10/22/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

// static global variable. initialize to 50
// a static variable is like a global variable is that is declared outside of a function but it's only accessible from the code in the file where it was declared. 
static float lastTemperature = 50.0;

float fahrenheitFromCelcius(float cel) {
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[]) {
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelcius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit\n", freezeInF);
    printf("The last temperature converted was %f\n", lastTemperature);
    return EXIT_SUCCESS;
}
