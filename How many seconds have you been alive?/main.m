//
//  main.m
//  How many seconds have you been alive?
//
//  Created by brandon kehl on 9/29/15.
//  Copyright (c) 2015 brandonkehl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSDateComponents *birthTime = [[NSDateComponents alloc] init];
        [birthTime setDay:24];
        [birthTime setMonth:01];
        [birthTime setYear:2001];
        [birthTime setHour:14];
        [birthTime setMinute:00];
        
        NSCalendar *calendar = [[NSCalendar alloc]initWithCalendarIdentifier: NSCalendarIdentifierGregorian];
        NSDate *timeAlive = [calendar dateFromComponents:birthTime];
        NSDate *now = [NSDate date];
        
                
        double secondsAlive = [now timeIntervalSinceDate: timeAlive];
        
        NSLog(@"I have been alive for %f seconds", secondsAlive);
        
    }
    return 0;
}
