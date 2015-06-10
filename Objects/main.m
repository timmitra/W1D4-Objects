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


@interface Newspaper : NSObject;

- (void)read;

@end

@implementation Newspaper

- (void)read
{
  NSLog(@"You read a report of the latest going-ons worldwide.");
}


int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    
    // Create two new objects.
    Newspaper *todaysPaper = [[Newspaper alloc] init];
    Letter *todaysLetter = [[Letter alloc] init];
    
    [todaysLetter read];
    [todaysPaper read];
  }
  return 0;
}

@end