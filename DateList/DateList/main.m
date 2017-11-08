//
//  main.m
//  DateList
//  Chapter 15
//
//  Created by Kathy Lin on 11/7/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // create 3 NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0*60.0*60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0*60.0*60.0];
        
        // create an array of all three (nil terminates the list)
        NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        
        // how many dates are there?
        NSInteger dateCount = [dateList count];
        NSLog(@"There are %lu dates", dateCount);
        // Print a couple of dates
        NSLog(@"the first date is %@", [dateList objectAtIndex:0]);
        NSLog(@"the third date is %@", [dateList objectAtIndex:2]);
        
        // Looping over elements in an array
        for (int i =  0; i < dateCount; i++) {
            NSDate *d = [dateList objectAtIndex:i];
            NSLog(@"Here is a date: %@", d);
        }
        
        // using a differnt type of for loop, "fast enumeration"
        // can't add or remove from the array while looping over it using this syntax
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        // mutable arrays
        NSMutableArray *mutableDateList = [NSMutableArray array];
        
        // add dates to the array
        [mutableDateList addObject:now];
        [mutableDateList addObject:tomorrow];
        
        // put "yesterday" at the beginning of the list
        [mutableDateList insertObject:yesterday atIndex:0];
    }
    return 0;
}
