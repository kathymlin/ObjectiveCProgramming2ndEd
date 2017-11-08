//
//  StockHolding.m
//  Stocks
//
//  Created by Kathy Lin on 11/7/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

- (float)costInDollars {
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars {
    return [self currentSharePrice] * [self numberOfShares];
}
@end
