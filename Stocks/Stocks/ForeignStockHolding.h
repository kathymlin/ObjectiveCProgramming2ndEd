//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by Kathy Lin on 11/8/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding {
    float conversionRate;
}
@property float conversionRate;
@end
