//
//  main.c
//  Coolness
//  Chapter 7, Page 49
//
//  Created by Kathy Lin on 10/22/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    // using a while loop
    int i = 0;
    while (i < 12) {
        printf("%d. Aaron is Cool\n", i);
        i++;
    }
    
    // using a for loop
    printf("\nUsing a for loop\n");
    for (int i = 0; i < 12; i++) {
        printf("%d. Aaron is Cool\n", i);
    }
    
    
    // break
    printf("\nUsing a break.\n");
    for (i = 0; i < 12; i++) {
        printf("Checking i = %d\n", i);
        if (i + 90 == i*i) {
            break;
        }
    }
    printf("The answer is %d\n", i);
    
    // continue
    printf("\nUsing a continue\n");
    for (i = 0; i < 12; i++) {
        if (i % 3 == 0)  {
            continue;
        }
        printf("Checking i = %d\n", i);
        if (i + 90 == i*i) {
            break;
        }
    }
    printf("the answer is %d\n", i);
    
    printf("\nUsing a do-while\n");
    i = 0;
    do {
        printf("%d. Aaron is Cool\n", i);
        i++;
    } while (i < 12);
    
   
    // challenge
    printf("\nCHALLENGE exercise\n");
    
    for (i = 99; i >= 0; i--) {
        if (i % 3 == 0) {
            printf("%d\n", i);
            if (i % 5 == 0) {
                printf("\tFound one!\n");
            }
        }
    }
    
    return 0;
}
