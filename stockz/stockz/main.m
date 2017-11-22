//
//  main.m
//  stockz
//  Chapter 26
//
//  Created by Kathy Lin on 11/21/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        NSMutableDictionary *stock;
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200]
                  forKey:@"shares"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160]
                  forKey:@"shares"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
        
        // read the file in
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares of %@", [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
        }
        
        // challenge: plist with 8 types
        NSMutableArray *plist = [[NSMutableArray alloc] init];
        
        // dictionary
        NSMutableDictionary *dictionary;
        dictionary = [NSMutableDictionary dictionary];
        [dictionary setObject:@"AAPL"
                  forKey:@"symbol"];
        [dictionary setObject:[NSNumber numberWithInt:200]
                  forKey:@"shares"];
        [plist addObject:dictionary];
        
        // array
        NSMutableArray *array = [[NSMutableArray alloc] init];
        [array addObject:@"xandy"];
        [array addObject:@"neely"];
        [array addObject:@"tobie"];
        [array addObject:@"pumpkin"];
        [plist addObject:array];
        
        // string
        [plist addObject:@"a string i am adding to this plist"];
        
        // data
        NSURL *url = [NSURL URLWithString:@"http://www.kathylin.com"];
        NSData *data = [[NSData alloc] initWithContentsOfURL:url];
        [plist addObject:data];
        
        // date
        NSDate *date = [[NSDate alloc] init];
        [plist addObject:date];
        
        // integer
        [plist addObject:[NSNumber numberWithInt:1234]];
        
        // float
        [plist addObject:[NSNumber numberWithFloat:10.77]];
        
        // boolean
        [plist addObject:[NSNumber numberWithBool:YES]];
    
        [plist writeToFile:@"/tmp/all8.plist" atomically:YES];
    }
    return 0;
}
