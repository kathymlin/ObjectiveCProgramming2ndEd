//
//  main.m
//  TimeAfterTime
//
//  Created by Kathy Lin on 11/5/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // send the message "date" to the NSDate class.
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"The new date lives at %p", now);
        // print as a string
        NSLog(@"The new date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        // adding time intervale
        NSDate *nowPlus = [now dateByAddingTimeInterval:(100000)];
        NSLog(@"Now + 100,000 seconds is %@", nowPlus);
        
        // chapter 12 challenge
        // use two instances of NSDate to figure out how many seconds I have been alive
        NSDateComponents *birthdayComp = [[NSDateComponents alloc] init];
        [birthdayComp setYear:1981];
        [birthdayComp setMonth:6];
        [birthdayComp setDay:17];
        [birthdayComp setHour:17];
        [birthdayComp setMinute:32];
        [birthdayComp setSecond:0];
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *birthday = [g dateFromComponents:birthdayComp];
        
        double aliveInSec = [now timeIntervalSinceDate:birthday];
        NSLog(@"Number of seconds I've been alive is %f", aliveInSec);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:now];
        NSLog(@"This is day %lu of the month", day);
        
        // What is the hour in the year?
        NSUInteger hour = [cal ordinalityOfUnit:NSCalendarUnitHour inUnit:NSCalendarUnitYear forDate:now];
        NSLog(@"This is hour %lu of the year", hour);
        
        // challenge, chapter 13
        // tell me if i'm currently in daylight savings time
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        BOOL isDaylightSavings = [timeZone isDaylightSavingTime];
        if (isDaylightSavings) {
            NSLog(@"We are in daylight savings.");
        } else {
            NSLog(@"We are not in daylight savings.");
        }
    }
    return 0;
}
