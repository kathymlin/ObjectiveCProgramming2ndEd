//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Kathy Lin on 11/8/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding
@synthesize conversionRate;

- (float)costInDollars {
    return [super costInDollars] * [self conversionRate];
}

- (float)valueInDollars {
    return [super valueInDollars] * [self conversionRate];
}

@end
