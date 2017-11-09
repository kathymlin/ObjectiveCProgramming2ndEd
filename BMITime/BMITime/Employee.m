//
//  Employee.m
//  BMITime
//
//  Created by Kathy Lin on 11/8/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import "Employee.h"

@implementation Employee
@synthesize employeeID;

// overriding a method
- (float)bodyMassIndex {
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

@end
