//
//  SPEventData.h
//  Student Planer
//
//  Created by Ryan on 4/4/15.
//  Copyright (c) 2015 Ryan Stentz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SPEventData : NSObject //An object that carries the data and data fetching methods for a particular Event

@property NSUInteger tag;
@property NSString* subject;
@property NSDate* time;
@property (nonatomic) NSString* text;

-(void) saveEventToPlist;
-(void) loadEventFromPlist: (NSString*) path;

@end
