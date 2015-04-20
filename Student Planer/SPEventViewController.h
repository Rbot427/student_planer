//
//  SPEventViewController.h
//  Student Planer
//
//  Created by Ryan on 3/11/15.
//  Copyright (c) 2015 Ryan Stentz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SPEventData.h"

@interface SPEventViewController : NSObject //Reorganize the properties sequence
@property (nonatomic) NSUInteger tag; //Not sure if I should relocate this property to the SPEventData object.  It is important to both.
@property (nonatomic) int length;
@property SPEventData* dataDelegate;
@property UIImageView* view; //Main view that SPEventViewController manages.  This view contains a single image with text.
@property (nonatomic) NSUInteger position; //The x value of the image view
@property UILabel* eventLabel;
@property UIColor* eventColor;

-(SPEventViewController*) init;
-(SPEventViewController*) initWithImage: (UIImage*) image;
-(SPEventViewController*) initWithSubject: (NSString*) subject; //Finds correct image and sets up the object
-(void) setText:(NSString *)text;
-(void) setTag:(NSUInteger)tag;
-(void) relocate:(NSUInteger)position;
-(void) destroy;
//-(void) setLength:(NSUInteger) length;


@end
