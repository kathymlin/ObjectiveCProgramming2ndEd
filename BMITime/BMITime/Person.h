//
//  Person.h
//  BMITime
//
//  Created by Kathy Lin on 11/7/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    // two instance variables
    // delcared inside the {}
    float heightInMeters;
    int weightInKilos;
}

/*
// set instance variables using these methods
- (void)setHeightInMeters:(float)h;
- (void)setWeightInKilos:(int)w;

// getters / accessors
- (float)heightInMeters;
- (float)weightInKilos;
*/

// shorthand for delcaring getters/setters
@property float heightInMeters;
@property int weightInKilos;

// this method calculates the BMI
- (float)bodyMassIndex;

@end
