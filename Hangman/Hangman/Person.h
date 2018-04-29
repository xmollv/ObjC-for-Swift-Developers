//
//  Person.h
//  Hangman
//
//  Created by Xavi Moll on 28/04/2018.
//  Copyright © 2018 xmollv. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonnull) NSString *name;

- (nonnull instancetype)initWithName:(nonnull NSString*)name;
- (nonnull NSString*)fetchGreetingForTime:(nonnull NSString*)time;

@end
