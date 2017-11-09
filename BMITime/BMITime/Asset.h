//
//  Asset.h
//  BMITime
//
//  Created by Kathy Lin on 11/8/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asset : NSObject {
    NSString *label;
    unsigned int resaleValue;
}

@property (strong) NSString *label;
@property unsigned int resaleValue;
@end
