//
//  Person.m
//  BMITime
//
//  Created by Kathy Lin on 11/7/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import "Person.h"

@implementation Person
/*
- (void)setHeightInMeters:(float)h {
    heightInMeters = h;
}

- (float)heightInMeters {
    return heightInMeters;
}

- (void)setWeightInKilos:(int)w {
    weightInKilos = w;
}
- (float)weightInKilos {
return weightInKilos;
}
*/

// using synthesize  to create default accessor methods.
@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex {
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h); 
}

@end
