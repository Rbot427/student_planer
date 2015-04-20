//
//  SPData.m
//  Student Planer
//
//  Created by Ryan on 3/10/15.
//  Copyright (c) 2015 Ryan Stentz. All rights reserved.
//

#import "SPData.h"

@implementation SPData
+(id) loadFileContents:(NSString *)path {
    return [NSArray arrayWithContentsOfFile:path]; //Kind of the exact same as load with array...
}

+(NSArray*) loadFileIntoArray:(NSString *)path {
    return [NSArray arrayWithContentsOfFile:path];
}

+(NSDictionary*) loadFileIntoDictionary:(NSString *)path {
    return [NSDictionary dictionaryWithContentsOfFile:path];
}
@end
