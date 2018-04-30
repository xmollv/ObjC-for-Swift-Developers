//
//  SFQuote.h
//  SciFiQuotes
//
//  Created by Xavi Moll on 30/04/2018.
//  Copyright © 2018 xmollv. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SFQuote : NSObject

@property NSString *text;
@property NSString *person;

- (nullable instancetype)initWithLine:(NSString*)line;

@end

NS_ASSUME_NONNULL_END
