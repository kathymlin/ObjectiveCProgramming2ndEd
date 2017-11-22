//
//  main.m
//  Stringz
//  Chapter 23
//
//  Created by Kathy Lin on 11/12/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Aaron is cool!\n"];
        }
        
        // declare a pointer to an NSError object, but don't instatiate it.
        // The NSError isntance will only be created if there is, in fact, an error.
        NSError *error = nil;
        
        // pass the NSError pointer by refence to the NSString method
        
        BOOL success = [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
        
        // test the returned book
        if (success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
        
    }
    return 0;
}
