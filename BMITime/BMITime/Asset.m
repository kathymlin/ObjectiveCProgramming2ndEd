//
//  Asset.m
//  BMITime
//
//  Created by Kathy Lin on 11/8/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import "Asset.h"

@implementation Asset
@synthesize resaleValue;
@synthesize label;

- (NSString *) description {
    return [NSString stringWithFormat:@"<%@: $%d >", [self label], [self resaleValue]];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);  
}
@end
