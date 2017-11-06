//
//  main.c
//  Chapter 10: Structs
//
//  Created by Kathy Lin on 11/5/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

// typedef defines an alias for a type declaration and allows one to use it more like the usual data types. You can pass it to another function
#include <stdio.h>
#include <time.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p) {
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[]) {
    
    // struct Person person (if no typedef)
    Person person;
    person.weightInKilos = 96;
    person.heightInMeters = 1.8;
    printf("person weighs %i kilograms.\n", person.weightInKilos);
    printf("person is %.2f meters tall.\n", person.heightInMeters);
    
    // calculate bmi
    printf("person has a BMI of %.2f.\n", bodyMassIndex(person));
        // challenge: write a program that will tell you what the date (4-30-2015 format is fine) will be in 4 million seconds.
    
    long secondsSince1970 = time(NULL);
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    
    long inFourMillionSeconds = secondsSince1970 + 4000000;
    struct tm time;
    localtime_r(&inFourMillionSeconds, &time);
    printf("The date in 4 million seconds is %d-%d-%d\n", time.tm_mon+1, time.tm_mday, time.tm_year+1900);
    
    return 0;
}
