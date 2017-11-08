//
//  main.m
//  Stocks
//  Chapter 17 - Challenge
//
//  Created by Kathy Lin on 11/7/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stockHoldings = [NSMutableArray array];
        
        StockHolding *stock1 = [[StockHolding alloc] init];
        [stock1 setPurchaseSharePrice:2.3];
        [stock1 setCurrentSharePrice:4.5];
        [stock1 setNumberOfShares:40];
        
        StockHolding *stock2 = [[StockHolding alloc] init];
        [stock2 setPurchaseSharePrice:12.9];
        [stock2 setCurrentSharePrice:10.56];
        [stock2 setNumberOfShares:90];
        
        StockHolding *stock3 = [[StockHolding alloc] init];
        [stock3 setPurchaseSharePrice:45.10];
        [stock3 setCurrentSharePrice:49.51];
        [stock3 setNumberOfShares:210];
        
        [stockHoldings addObject:stock1];
        [stockHoldings addObject:stock2];
        [stockHoldings addObject:stock3];
        
        for (StockHolding *sh in stockHoldings) {
            NSLog(@"Value is $%.2f", [sh valueInDollars]);
        }
        
    }
    return 0;
}
