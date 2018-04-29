//
//  NSString+Trimming.m
//  Hangman
//
//  Created by Xavi Moll on 29/04/2018.
//  Copyright © 2018 xmollv. All rights reserved.
//

#import "NSString+Trimming.h"

@implementation NSString (Trimming)

- (NSString*)ph_stringByTrimming {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

@end
