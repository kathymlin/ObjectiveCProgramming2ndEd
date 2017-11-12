//
//  main.m
//  BMITime
//  Chapter 17-20
//
//  Created by Kathy Lin on 11/7/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // create an instance of person
        Employee *person = [[Employee alloc] init];
        
        // Assign values to instance variables
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        [person setEmployeeID:267575];
        
        // Get the bmi
        float bmi = [person bodyMassIndex];
        NSLog(@"The BMI of Employee #%d, who weighs %d kilos and is %.1f meters tall is %f", [person employeeID], [person weightInKilos], [person heightInMeters], bmi);
        
        // Create an array of Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        for (int i = 0; i < 10; i++) {
            // create an instance of Employee
            Employee *person = [[Employee alloc] init];
            [person setWeightInKilos:90+i];
            [person setHeightInMeters:1.8-i/10.0];
            [person setEmployeeID:i];
            // put the employee in the employees array
            [employees addObject:person];
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        // create 10 assets
        for (int i = 0; i < 10; i++) {
            // create an asset
            Asset *asset = [[Asset alloc] init];
            
            // give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i*17];
            
            // get a random # between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            // find that employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // assign the assset to that employee
            [randomEmployee addAssetsObject:asset];
            
            // add to the array holding all assets
            [allAssets addObject:asset];
        }
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership one one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"All assets: %@", allAssets);
        NSLog(@"Giving up ownership of array");
        allAssets = nil;
        employees = nil; 
    }
    sleep(100); 
    return 0;
}
