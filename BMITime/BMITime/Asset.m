//
//  Asset.m
//  BMITime
//
//  Created by Kathy Lin on 11/8/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset
@synthesize label, resaleValue, holder;

- (NSString *) description {
    // if holder is non nil
    if ([self holder]) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", [self label], [self resaleValue], [self holder]];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d >", [self label], [self resaleValue]];
    }
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);  
}
@end
