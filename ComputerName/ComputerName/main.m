//
//  main.m
//  ComputerName: Chapter 14 Challenge
//
//  Created by Kathy Lin on 11/6/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // print out the name of the computer
        NSHost *host = [NSHost currentHost];
        NSLog(@"Computer name is \"%@\"", [host localizedName]);
    }
    return 0;
}
