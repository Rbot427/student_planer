//
//  SPData.h
//  Student Planer
//
//  Created by Ryan on 3/10/15.
//  Copyright (c) 2015 Ryan Stentz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SPData : NSObject //Very general data (could delete) managing object.  Subclass and add to your needs.

+(id) loadFileContents:(NSString*) path;
+(NSArray*) loadFileIntoArray:(NSString*) path;
+(NSDictionary*) loadFileIntoDictionary:(NSString*) path;

@end
