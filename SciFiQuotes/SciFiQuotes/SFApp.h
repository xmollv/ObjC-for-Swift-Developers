//
//  SFApp.h
//  SciFiQuotes
//
//  Created by Xavi Moll on 30/04/2018.
//  Copyright © 2018 xmollv. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SFQuote.h"

NS_ASSUME_NONNULL_BEGIN

@interface SFApp : NSObject

@property NSMutableArray<SFQuote *> *quotes;

- (instancetype)initWithFile:(NSString*)filename;
- (void)printQuote;

@end

NS_ASSUME_NONNULL_END
