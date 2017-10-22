//
//  main.c
//  BeerSong
//
//  Created by Kathy Lin on 10/22/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#include <stdio.h>

void singTheSong(int numberOfBottles)
{
    if (numberOfBottles == 0) {
        printf("there are simply no more bottles of beer on the wall.\n");
    }
    else {
        printf("%d bottles of beer on the wall. %d bottles of beer!.\n", numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles-1;
        printf("Take one down and pass it around. %d bottles of beer on the wall.\n", oneFewer);
        singTheSong(oneFewer);
        printf("Put a bottle in the recycling, %d empty bottles in the bin.\n", numberOfBottles);
    }
}

int main(int argc, const char * argv[]) {
    singTheSong(99);
    return 0;
}
