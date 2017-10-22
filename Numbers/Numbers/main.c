//
//  main.c
//  Numbers
//  Chapter 6, Page 42
//
//  Created by Kathy Lin on 10/22/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    unsigned long x = 255;
    printf("x is %lu.\n", x);
    printf("In octal, x is %lo.\n", x);
    printf("In hexadecimal, x is %lx.\n", x);
    
    printf("3 * 3 + 5 * 2 = %d\n", 3*3+5*2);
    
    // integer division
    printf("11 / 3 = %d\n", 11/3);
    
    // modulo
    printf("11 / 3 = %d remainder of %d \n", 11/3, 11%3);
    
    // casting
    printf("11 / 3.0 = %f\n", 11/(float)3);
    
    // absolute value
    printf("The absolute value of -5 is %d\n", abs(-5));
    
    // floating point numbers
    double y = 12345.6789;
    printf("y is %f\n", y); // normal decimal notation
    printf("y is %e\n", y); // scientific notation
    printf("y is %.2f\n", y); // limiting the # of decimal spaces
    
    return 0;
}
