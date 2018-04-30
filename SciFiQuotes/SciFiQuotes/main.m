//
//  main.m
//  SciFiQuotes
//
//  Created by Xavi Moll on 30/04/2018.
//  Copyright © 2018 xmollv. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SFApp.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        NSString *desktopPath = [paths objectAtIndex:0];
        
        SFApp *app = [[SFApp alloc] initWithFile:[desktopPath stringByAppendingPathComponent:@"quotes.txt"]];
        [app printQuote];
        
    }
    return 0;
}
