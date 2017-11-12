//
//  Asset.h
//  BMITime
//
//  Created by Kathy Lin on 11/8/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject {
    NSString *label;
    
    // generally, in a parent/child relationship, the parent should own the child but the child shoud not own the parent
    __weak Employee *holder;
    unsigned int resaleValue;
}

@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;
@end
