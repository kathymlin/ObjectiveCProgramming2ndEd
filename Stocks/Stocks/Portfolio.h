//
//  Portfolio.h
//  Stocks
//
//  Created by Kathy Lin on 11/8/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class StockHolding;

@interface Portfolio : NSObject {
    NSMutableArray *stockHoldings;
}
- (void)addStockHolding:(StockHolding *)sh;
- (float)valueOfPortfolio;
@end
