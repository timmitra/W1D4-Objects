//
//  main.m
//  Objects
//
//  Created by Tim Mitra on 6/10/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Letter : NSObject;

- (void)read;

@end

@implementation Letter

- (void)read
{
  NSLog(@"You read a touching personal message.");
}

@end


@interface BirthdayPartyInvitation : Letter;

@end

@implementation BirthdayPartyInvitation

- (void)read
{
  [super read];
  NSLog(@"It's an invitation to a friend's birthday party! They're old.");
}

@end


@interface LetterOpener : NSObject

- (void)openLetter:(Letter *)letterToBeOpened;

@end

@implementation LetterOpener

- (void)openLetter:(Letter *)letterToBeOpened
{
  [letterToBeOpened read];
}

@end


int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    
    // Create two objects.
    Letter *todaysLetter = [Letter new];
    Letter *todaysInvitation = [BirthdayPartyInvitation new];
    
    LetterOpener *fancyKnife = [LetterOpener new];
    [fancyKnife openLetter:todaysLetter];
    [fancyKnife openLetter:todaysInvitation];
  }
  return 0;
}