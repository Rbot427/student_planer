//
//  SPData.h
//  Student Planer
//
//  Created by Ryan on 3/10/15.
//  Copyright (c) 2015 Ryan Stentz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SPData : NSObject //Very general data managing object.  Subclass and add to your needs.
@property NSArray* data; //Reference to data contained in the user's plist file
@property NSBundle* mainBundle;
@property NSString* path;

-(SPData*) init; //Generic init
+(SPData*) SPDataWithBundle: (NSBundle*) mainBundle; //Initilizes a SPData object with a specified bundle
+(SPData*) SPDataWithPath: (NSString*) path;
-(void) loadWithBundle; //Loads from a bundle specified during SPDataWithBundle:mainBundle method into data property
-(void) loadWithPath: (NSString*) path; //Loads from a specified path.

@end
