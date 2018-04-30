//
//  main.m
//  SwiftyCommits
//
//  Created by Xavi Moll on 30/04/2018.
//  Copyright © 2018 xmollv. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SCApp.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *repo = @"apple/swift";
        
        if (argc == 2) {
            repo = [NSString stringWithCString:argv[1] encoding: NSUTF8StringEncoding];
        }
        
        SCApp *app = [SCApp new];
        [app fetchCommitsForRepo:repo];
        
    }
    return 0;
}
