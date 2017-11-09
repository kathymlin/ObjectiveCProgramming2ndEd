//
//  main.m
//  Stocks
//  Chapter 17 - Challenge
//  Chapter 19 - Challenge
//
//  Created by Kathy Lin on 11/7/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"
#import "Portfolio.h"


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
        
        ForeignStockHolding *fsh = [[ForeignStockHolding alloc] init];
        [fsh setPurchaseSharePrice:2.3];
        [fsh setCurrentSharePrice:4.5];
        [fsh setNumberOfShares:40];
        [fsh setConversionRate:0.94];
        [stockHoldings addObject:fsh];
        
        for (StockHolding *sh in stockHoldings) {
            NSLog(@"Value is $%.2f", [sh valueInDollars]);
        }
        
        // Creates an instance of class Portfolio which is filled with stock holdings. Portfolios can tell you their current value.
        
        Portfolio *p = [[Portfolio alloc] init];
        [p addStockHolding:stock1];
        [p addStockHolding:stock2];
        [p addStockHolding:stock3];
        [p addStockHolding:fsh];
        
        NSLog(@"Portfolio value is $%.2f", [p valueOfPortfolio]);
        
    }
    return 0;
}
