//
//  main.m
//  ImageFetch
//  Chapter 23: Fetches an image from the Google website, then writes the buffer of bytes to a file
//
//  Created by Kathy Lin on 11/12/17.
//  Copyright © 2017 Kathy Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // From the book, currently deprecated
        /*
        NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];

  
        if (!data) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"The file is %lu bytes", [data length]);
        
        BOOL written = [data writeToFile:@"/tmp/google.png" options:NSDataWritingAtomic error:&error];
        
        if (!written) {
            NSLog(@"write failed: %@", [error localizedDescription]);
            return 1;
        }
        */
        
        // using non deprecated methods
        NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
        NSURLSession *session = [NSURLSession sessionWithConfiguration:config];
        
        // data task
        NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
 
            if (error) {
                NSLog(@"fetch failed: %@", [error localizedDescription]);
            } else {
                NSLog(@"The file is %lu bytes", [data length]);
                BOOL written = [data writeToFile:@"/tmp/google.png" options:0 error:&error];
                
                if (!written) {
                    NSLog(@"write failed: %@", [error localizedDescription]);
                }
            }
        }];
        [dataTask resume];
        
        NSLog(@"success!!");
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        NSLog(@"The file read from the disk as %lu bytes", [readData length]);

    }
    return 0;
}
