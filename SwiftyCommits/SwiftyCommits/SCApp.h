//
//  SCApp.h
//  SwiftyCommits
//
//  Created by Xavi Moll on 30/04/2018.
//  Copyright © 2018 xmollv. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SCApp : NSObject

- (void)fetchCommitsForRepo:(NSString*)repo;

@end

NS_ASSUME_NONNULL_END
