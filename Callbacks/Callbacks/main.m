//
//  main.m
//  Callbacks
//
//  Created by Kathy Lin on 11/21/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Logger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // create an instance of a Loger and make it the target of a instance of NSTimer.  Set the action to be the selector for sayOuch:
        Logger *logger = [[Logger alloc] init];
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                          target:logger
                                                        selector:@selector(sayOuch:)
                                                        userInfo:nil
                                                         repeats:YES];
        
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                              delegate:logger
                                                                      startImmediately:YES];

        // Logger receives a notification when the time zone changes
        [[NSNotificationCenter defaultCenter] addObserver:logger
                                                 selector:@selector(zoneChange:)
                                                     name:NSSystemTimeZoneDidChangeNotification
                                                   object:nil];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
