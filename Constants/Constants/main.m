//
//  main.m
//  Constants
//  Chapter 22
//
//  Created by Kathy Lin on 11/12/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // in literal NSString, use \u for arbitrary unicode characters.
        NSLog(@"\u03c0 is %f", M_PI);
        
        // MAX is a #define, a macro
        // #define tells the preprocessor, whenever you encounter A, replace it with B before the compiler sees it.
        NSLog(@"%d is larger", MAX(10,12));
        
        NSLocale *here = [NSLocale currentLocale];
        // using a global variable
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currency);
    }
    return 0;
}
