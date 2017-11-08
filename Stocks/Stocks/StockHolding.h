//
//  StockHolding.h
//  Stocks
//
//  Created by Kathy Lin on 11/7/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject {
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
}

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

- (float)costInDollars;
- (float)valueInDollars;

@end
