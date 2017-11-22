//
//  Logger.m
//  Callbacks
//
//  Created by Kathy Lin on 11/21/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void) sayOuch:(NSTimer *)t {
    NSLog(@"Ouch!");
}

// called each time a chunk of data arrives
- (void)connection:(NSURLConnection *)connection didReceiveData:(nonnull NSData *)data {
    NSLog(@"received %lu bytes", [data length]);
    
    // create a mutable data if it doesn't already exist
    if (!incomingData) {
        incomingData = [[NSMutableData alloc] init];
    }
    [incomingData appendData:data];
}

// called when the last chunk of data has been processed
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    // uncomment this line to see the entire fetched file
    // NSLog(@"The whole string is %@", string);
}

// called if the fetch fails
- (void)connection:(NSURLConnection *)connection didFailWithError:(nonnull NSError *)error {
    NSLog(@"connection failed: %@", [error localizedDescription]);
    incomingData = nil; 
}

- (void)zoneChange:(NSNotification *)note {
    NSLog(@"The system tiem zone has changed!");
}
@end
