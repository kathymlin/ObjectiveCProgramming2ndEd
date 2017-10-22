//
//  main.c
//  TwoFloats
//
//  Created by Kathy Lin on 10/22/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    float firstFloat = 3.14;
    float secondFloat = 42.0;
    double sum = firstFloat + secondFloat;
    printf("sum of two floats: %f", sum);
    
    int i = 20;
    int j = 25;
    int k = (i > j) ? 10 : 5;
    if ( 5 < j - k) { printf("the first expression is true"); }
    else if (j > i) { printf("the second expression is true"); }
    else { printf("Neither expression is true"); }
    
    return 0;
}
