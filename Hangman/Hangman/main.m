//
//  main.m
//  Hangman
//
//  Created by Xavi Moll on 25/04/2018.
//  Copyright © 2018 xmollv. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

void printWord(NSString *word, NSMutableArray<NSString*> *usedLetters) {
    printf("\nWord: ");
    
    // this will be used to track missing letters
    BOOL missingLetters = NO;
    
    // loop over every letter
    for (NSInteger i=0; i < [word length]; i++) {
        // convert the unichar into an NSString for arrays
        unichar letter = [word characterAtIndex:i];
        NSString *letterString = [NSString stringWithFormat:@"%C", letter];
        
        // if we already guessed this letter, print it out
        if ([usedLetters containsObject:letterString]) {
            printf("%C", letter);
        } else {
            printf("_");
            // we haven't won yet!
            missingLetters = YES;
        }
    }
    
    // notice careful use of \n to control line breaks
    printf("\nGuesses: %ld/8\n", [usedLetters count]);
    
    if (missingLetters == NO) {
        // no missing letters - a winner!
        printf("It looks like you live on... for now.\n");
        exit(0);
    } else {
        if ([usedLetters count] == 8) {
            // they guessed eight times; game over
            printf("Oops - you died! The word was %s.\n", [word cStringUsingEncoding:NSUTF8StringEncoding]);
            exit(0);
        } else {
            // game is still active
            printf("Enter a guess: ");
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [Person new];
        [person printGreetingTo:@"Taylor!" atTimeOfDay:@"evening"];
    }
    return 0;
}
