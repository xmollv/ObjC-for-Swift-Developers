//
//  Person.m
//  Hangman
//
//  Created by Xavi Moll on 28/04/2018.
//  Copyright © 2018 xmollv. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name = _name;

- (void)printGreeting {
    NSLog(@"%@", _name);
}

- (NSString*)name {
    NSLog(@"Reading name!");
    return _name;
}

- (void)setName:(NSString *)newName {
    NSLog(@"Writing name!");
    _name = newName;
}

- (void)printGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time {
    if ([time isEqualToString:@"morning"]) {
        NSLog(@"Good morning, %@", name);
    } else {
        NSLog(@"Good evening, %@", name);
    }
}

- (NSDictionary*)fetchGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time {
    if ([time isEqualToString:@"morning"]) {
        return @{
                 @"English" : [NSString stringWithFormat:@"Good morning, %@", name],
                 @"French": [NSString stringWithFormat:@"Bonjour, %@", name]
                 };
    } else {
        return @{
                 @"English" : [NSString stringWithFormat:@"Good evening, %@", name],
                 @"French" : [NSString stringWithFormat:@"Bonsoir, %@", name]
                 };
    }
}

+ (void)genericGreeting {
    NSLog(@"Greetins, earthlight.");
}

+ (instancetype)personWithName:(NSString*)name {
    return [[self alloc] initWithName: name];
}

@end
