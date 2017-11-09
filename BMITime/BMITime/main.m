//
//  main.m
//  BMITime
//  Chapter 17
//
//  Created by Kathy Lin on 11/7/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // create an instance of person
        Employee *person = [[Employee alloc] init];
        
        // Assign values to instance variables
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        [person setEmployeeID:15];
        
        // Get the bmi
        float bmi = [person bodyMassIndex];
        NSLog(@"The BMI of Employee #%d, who weighs %d kilos and is %.1f meters tall is %f", [person employeeID], [person weightInKilos], [person heightInMeters], bmi);
        
        
    }
    return 0;
}
