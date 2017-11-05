//
//  main.c
//  Addresses
//
//  Created by Kathy Lin on 11/5/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    
    int i = 17;
    printf("i stores its value at %p\n", &i);
    printf("This function starts at %p\n", main);
    
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    
    // getting data at an address
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    
    // storing data using *
    *addressOfI = 89;
    printf("Now i is %d\n", i);
    
    // using sizezOf()
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(int*));
    
    float *myPointer;
    // Set myPointer to NULL for now, I'll store a pointer there
    myPointer = NULL;
    
    if (myPointer) {
        // myPointer is not null
        // do something with the data at myPointer...
    } else {
        // myPoiner is NULL
    }
    
    // nil and NULL are equivalent. in objective-C, nil is the address where no object lives.
    
    // CHALLENGE
    short myShort = 0;
    unsigned short unsignedShort = 0;
    printf("An short is %zu bytes\n", sizeof(myShort));
    printf("The smallest # it can store is %d\n (15 bits, or 2^15) and the largest is %d\n", -(1 << 15), (1 << 15)-1);
    printf("An unsigned short is %zu bytes\n", sizeof(unsignedShort));
    printf("The smallest # it can store is %d\n (16 bits, or 2^16) and the largest is %d\n", -(1 << 16), (1 << 16)-1);

    return 0;
    
}
