//
//  SPEvent.h
//  Student Planer
//
//  Created by Ryan on 3/8/15.
//  Copyright (c) 2015 Ryan Stentz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SPEvent : NSObject
@property NSInteger* tag;
@property NSInteger* length;
@property UIImage* image; //NOTE:  Going to separate the SPEvent with the SPEventView
@property NSMutableArray* position;

-(SPEvent*) init;
-(SPEvent*) initWithImagePath: (NSString*) path;
-(void) changeEventPostion: (int) x y: (int) y;

@end
