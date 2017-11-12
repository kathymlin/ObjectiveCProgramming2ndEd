//
//  Employee.m
//  BMITime
//
//  Created by Kathy Lin on 11/8/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee
@synthesize employeeID;

// overriding a method
- (float)bodyMassIndex {
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (void)addAssetsObject:(Asset *)a {
    // Is assets nil?
    if (!assets) {
        // create the array
        assets = [[NSMutableArray alloc] init];
    }
    [assets addObject:a];
    [a setHolder:self];
}

- (unsigned int)valueOfAssets {
    // sum up the resale value of the assets
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    return sum;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>", [self employeeID], [self valueOfAssets]];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self); 
}

@end
