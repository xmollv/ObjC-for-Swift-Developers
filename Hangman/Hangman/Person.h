//
//  Person.h
//  Hangman
//
//  Created by Xavi Moll on 28/04/2018.
//  Copyright © 2018 xmollv. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (void)printGreeting:(NSString*)greeting;
- (void)printGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time;
- (NSDictionary*)fetchGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time;

+ (void)genericGreeting;
+ (instancetype)personWithName:(NSString*)name;

@end
