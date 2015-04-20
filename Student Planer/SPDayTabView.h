//
//  SPDayTabView.h
//  Student Planer
//
//  Created by Ryan on 3/5/15.
//  Copyright (c) 2015 Ryan Stentz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SPEventViewController.h"

@interface SPDayTabView : UIViewController
@property (nonatomic) UIScrollView* view;
@property int count;
@property NSMutableArray* eventViews;
@property IBOutlet UIButton* myButton;
@property IBOutlet UIButton* removeButton;
@property int divideSpace;
@property IBOutlet UILabel* debugLabel;
@property int length; //The downwards length of the view

-(SPDayTabView*) init;
-(void) appendEventToViewStack: (SPEventViewController*) event;
-(void) removeEventFromViewStack: (NSUInteger) index;
-(void) updateEventTagsBeyondPosition: (NSUInteger) index;
-(void) updateEventPositionBeyondIndex: (NSUInteger) index by: (NSUInteger)amount;
-(IBAction)buttonPressed:(id)sender; //Will remove
-(IBAction)additionalPressureAppliedToButton:(id)sender;
-(void) updateContentSize: (CGSize) size;
-(CGSize) getViewSize;

@end
