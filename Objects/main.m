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


@interface LetterOpener : NSObject

- (void)openLetter:(Letter *)letterToBeOpened;

@end

@implementation LetterOpener

- (void)openLetter:(Letter *)letterToBeOpened
{
  if (letterToBeOpened != nil) {
    [letterToBeOpened read];
  } else {
    NSLog(@"The envelope was empty!");
  }
  
}

@end


int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    
    LetterOpener *plasticFork = [[LetterOpener alloc] init];
    
    Letter *invitation = [Letter new];
    Letter *paycheque = nil;
    
    [plasticFork openLetter:invitation];
    [plasticFork openLetter:paycheque];
    
  }
  return 0;
}
