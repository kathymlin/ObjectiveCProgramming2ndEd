//
//  main.c
//  Triangle
//  Page 40, Chapter 5
//
//  Created by Kathy Lin on 10/22/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#include <stdio.h>

// static global that holds total for all three angles of a triangle
static float triangleAngleTotal = 180.0;

// Calculates the remaining angle in a triangle given two angles.
float remainingAngle(float angleA, float angleB) {
    return triangleAngleTotal - (angleA + angleB);
}

int main(int argc, const char * argv[]) {
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}
