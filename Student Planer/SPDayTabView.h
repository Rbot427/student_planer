//
//  SPDayTabView.h
//  Student Planer
//
//  Created by Ryan on 3/5/15.
//  Copyright (c) 2015 Ryan Stentz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SPEvent.h"

@interface SPDayTabView : UIViewController
@property NSInteger* count;
@property NSMutableArray* events;
@property IBOutlet UIButton* myButton;
@property NSInteger* divideSpace;

-(SPDayTabView*) init;
-(void) appendEventToViewStack: (SPEvent*) event;
-(IBAction)buttonPressed:(id)sender;

@end
