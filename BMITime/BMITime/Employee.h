//
//  Employee.h
//  BMITime
//
//  Created by Kathy Lin on 11/8/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person {
    int employeeID;
    NSMutableArray *assets;
}

@property int employeeID;
- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;
@end
