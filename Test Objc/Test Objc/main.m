//
//  main.m
//  Test Objc
//
//  Created by Xavi Moll on 22/04/2018.
//  Copyright © 2018 xmollv. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int i = 10;
        
        if (i == 10) {
            NSLog(@"Hello, World!");
        }
        
        NSString *str = @"Reject common sense to make the impossible possible!";
        NSArray *array = @[@"Hello", @"World"];
        
        int j = 20;
        switch (j) {
            case 20:
                NSLog(@"It's 20!");
                break;
            case 40:
                NSLog(@"It's 40!");
                break;
            case 60:
                NSLog(@"It's 60!");
                break;
            default:
                NSLog(@"It's something else");
        }
        
        NSArray *names = @[@"Laura", @"Janet", @"Kim"];
        for (NSString *name in names) {
            NSLog(@"Hello, %@", name);
        }
        
        for (int i = 1; i <= 5; ++i) {
            NSLog(@"%d * %d is %d", i, i, i*i);
        }
        
        NSString *name = nil;
        NSLog(@"Hello, %@!", name ?: @"Anonymous");
        
        NSString *first = @"Hello";
        NSLog(@"%p", first);
        first = @"World";
        NSLog(@"%p", first);
        
        NSLog(@"%.2f", M_PI);
        
        NSString *output = [[NSString alloc] initWithContentsOfFile:@"hello.txt" encoding:nil error: nil];
        
        NSDictionary *ships = @{
                                @"Serenity" : @"Firefly",
                                @"Enterprise" : @"Star Trek",
                                @"Executor" : @"Star Wars"
                                };
        
        for (NSString *key in ships) {
            NSLog(@"The ships %@ features in %@", key, ships[key]);
        }
        
        NSMutableDictionary *newShips = [[NSMutableDictionary alloc] init];
        newShips[@"Whatever"] = @"WHAT";
        
        for (NSString *key in newShips) {
            NSLog(@"%@: %@", key, newShips[key]);
        }
        
        NSSet *odd = [NSSet setWithObjects:@1, @3, @5, @7, @9, nil];
        NSSet *even = [NSSet setWithObjects:@2, @4, @6, @8, @10, nil];
        NSSet *combined = [odd setByAddingObjectsFromSet:even];
        NSMutableSet *mutable = [combined mutableCopy];
        
        NSCountedSet *numbers = [NSCountedSet setWithObjects:@1, @3, @2, @8, @3, @6, @8, @8, @5, @1, @6, @3, nil];
        for (NSString *value in [numbers allObjects]) {
            NSLog(@"%@ appears %ld times", value, [numbers countForObject:value]);
        }
        
        NSArray *girlNames = @[@"Sophie", @"Alexandra", @"Charlotte", @"Isabella"];
        for (NSString *name in girlNames) {
            NSLog(@"%@ is %ld letters.", names, [name length]);
        }
        
        NSValue *rect = [NSValue valueWithRect:NSMakeRect(0, 0, 10, 10)];
        NSValue *point = [NSValue valueWithPoint:NSMakePoint(0, 0)];
        NSValue *size = [NSValue valueWithSize:NSMakeSize(10, 10)];
        
        NSMutableArray *people = [@[@"Taylor Swift", @"Adele Adkins"] mutableCopy];
        if ([people isKindOfClass:[NSArray class]]) {
            if ([people respondsToSelector:@selector(removeAllObjects)]) {
                [people performSelector:@selector(removeAllObjects)];
            }
        }
        
        

    }
    return 0;
}
