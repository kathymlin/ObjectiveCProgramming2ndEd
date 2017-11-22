//
//  Logger.h
//  Callbacks
//
//  Created by Kathy Lin on 11/21/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject {
    NSMutableData *incomingData;
}

- (void)sayOuch:(NSTimer *)t;

@end
