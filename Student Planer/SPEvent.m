//
//  SPEvent.m
//  Student Planer
//
//  Created by Ryan on 3/8/15.
//  Copyright (c) 2015 Ryan Stentz. All rights reserved.
//

#import "SPEvent.h"

@implementation SPEvent

-(SPEvent*) init {
    self = [super init];
    
    if(self) {
        return self;
    }
    return false;
}

-(SPEvent*) initWithImagePath:(NSString *)path { //Possible change the name to eventWithImagePath
    self = [self init];
    
    self.image = [UIImage imageWithContentsOfFile:path];//set the color of the event image
    return self;
}

-(void) changeEventPostion:(int) x y: (int) y {
    NSMutableArray* newPosition = [NSMutableArray array]
@end
