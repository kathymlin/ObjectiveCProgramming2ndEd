//
//  main.m
//  Groceries
//
//  Chapter 15 - Challenge
//
//  Created by Kathy Lin on 11/7/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *groceries = [NSMutableArray array];
        [groceries addObject:@"Milk"];
        [groceries addObject:@"Juice"];
        [groceries addObject:@"Basil"];
        [groceries addObject:@"Puffins Cereal"];
        [groceries addObject:@"Paper Towels"];

        for (NSString *s in groceries) {
            NSLog(@"Need to buy %@.", s);
        }
        
        // Read two files. Finds common proper names that are also regular words
        
        // proper names file
        NSString *properNames = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSString *words = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        
        // break into an array of strings
        NSArray *nameArray = [properNames componentsSeparatedByString:@"\n"];
        NSArray *wordArray = [words componentsSeparatedByString:@"\n"];
        
        // Go first through array of names
        for (NSString *name in nameArray) {
            // Compare the name to all the words
            for (NSString *word in wordArray) {
                if (NSOrderedSame == [name caseInsensitiveCompare:word]) {
                    // they are equal so print something out
                    NSLog(@"The name %@ is also a word!", name);
                    break;
                }
            }
        }
    }
    return 0;
}
