//
//  SFQuote.m
//  SciFiQuotes
//
//  Created by Xavi Moll on 30/04/2018.
//  Copyright © 2018 xmollv. All rights reserved.
//

#import "SFQuote.h"

@implementation SFQuote

- (nullable instancetype)initWithLine:(NSString*)line {
    if (self = [super init]) {
        NSArray *split = [line componentsSeparatedByString:@"/"];
        
        if ([split count] != 2) {
            return nil;
        }
        
        self.text = split[0];
        self.person = split[1];
    }
    
    return self;
}

@end
