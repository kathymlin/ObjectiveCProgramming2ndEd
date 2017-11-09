//
//  Portfolio.m
//  Stocks
//
//  Created by Kathy Lin on 11/8/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import "Portfolio.h"
#import "StockHolding.h"

@implementation Portfolio

// loops through all stocks and adds up the currentvalue to return that as the portfolio's value
- (float)valueOfPortfolio {
    float sum = 0.0;
    for (StockHolding *sh in stockHoldings) {
        sum += [sh valueInDollars];
    }
    return sum;
}

// Adds a stock holding to the portfolio
- (void)addStockHolding:(StockHolding *)sh {
    if (!stockHoldings) {
        stockHoldings = [[NSMutableArray alloc] init];
    }
    [stockHoldings addObject:sh];
}

@end
