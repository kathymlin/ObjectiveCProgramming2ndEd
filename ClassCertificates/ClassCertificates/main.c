//
//  main.c
//  ClassCertificates
//
//  Created by Kathy Lin on 10/22/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>

void congratuateStudent(char* student, char* course, int numDays) {
    printf("%s has done as much %s Programming as I could fit into %d days.\n", student, course, numDays);
}

int main(int argc, const char * argv[]) {
    congratuateStudent("Mark", "Cocoa", 5);
    sleep(2);
    congratuateStudent("Bo", "Objective-C", 2);
    sleep(2);
    congratuateStudent("Mike", "Python", 5);
    sleep(2);
    congratuateStudent("Ted", "iOS", 5);
}
