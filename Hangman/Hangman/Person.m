//
//  Person.m
//  Hangman
//
//  Created by Xavi Moll on 28/04/2018.
//  Copyright © 2018 xmollv. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString*)name {
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

- (void)printGreeting {
    NSLog(@"%@", self.name);
}

@end
