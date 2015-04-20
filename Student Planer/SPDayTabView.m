//
//  SPDayTabView.m
//  Student Planer
//
//  Created by Ryan on 3/5/15.
//  Copyright (c) 2015 Ryan Stentz. All rights reserved.
//

#import "SPDayTabView.h"


@implementation SPDayTabView

-(void)viewDidLoad {
    [super viewDidLoad];
    self.view.scrollEnabled = YES;
    self.view.contentInset = UIEdgeInsetsMake(20.0, 0, 0, 0);
}

-(SPDayTabView*) init {
    self = [super init];
    if (self){
        self.divideSpace = 10;
        self.eventViews = [[NSMutableArray alloc] init];
        self.debugLabel.text = @"Called Init";
        return self;
    }
    return false;
}

-(id) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    self.divideSpace = 10; //The space between events
    self.eventViews = [[NSMutableArray alloc]init];
    self.debugLabel.text = @"Called Init";
    
    //self.view.scrollEnabled = YES;
    return self;
}

-(void)appendEventToViewStack: (SPEventViewController*) event { //Assigns the event view an index and adds it to the stack
    if((int)[self.eventViews count] > 0) { //If this is not the first event to be added
        SPEventViewController* lastEvent = [self.eventViews lastObject];
        NSUInteger position = lastEvent.position + lastEvent.length + self.divideSpace ;
        [event relocate:position];
    }
    [self.view addSubview:event.view];
    [self.eventViews addObject:event];
    [self updateContentSize:[self getViewSize]];
}

-(void) removeEventFromViewStack:(NSUInteger) index {
    SPEventViewController* target = [self.eventViews objectAtIndex:index];
    [self.eventViews removeObject:target];
    [self updateEventTagsBeyondPosition:index];
    [target.view removeFromSuperview]; //Important function that likes to eat shit
    [self updateEventPositionBeyondIndex:index by:-(target.length + self.divideSpace)];
    CGSize size = [self getViewSize]; [self updateContentSize:size];
}

-(void) updateEventTagsBeyondPosition:(NSUInteger)index {
    SPEventViewController* target;
    for(NSUInteger i = index; i < [self.eventViews count]; i++) {
        target = [self.eventViews objectAtIndex:i];
        target.tag = i;
    }
}

-(void) updateEventPositionBeyondIndex:(NSUInteger)index by:(NSUInteger)amount {
    SPEventViewController* target;
    for(NSUInteger i = index; i < [self.eventViews count]; i++) {
        target = [self.eventViews objectAtIndex:i];
        [target relocate:target.position + amount];
    }
}

-(CGSize) getViewSize {
    SPEventViewController* lastEvent = [self.eventViews lastObject];
    NSUInteger length = lastEvent.position + lastEvent.length;
    CGSize size = CGSizeMake(self.view.frame.size.width, length);
    return size;
}

-(void) updateContentSize:(CGSize)size {
    self.view.contentSize = size;
}

-(void)buttonPressed:(id)sender { //COME BACK TO THIS:  Testing out images to see how they work
    NSString* path = @"/Users/Ryan/Desktop/testImage.jpeg";
    UIImage* image = [UIImage imageWithContentsOfFile:path];
    SPEventViewController* event = [[SPEventViewController alloc] initWithImage:image];
    event.tag = [self.eventViews count];
    [self appendEventToViewStack:event];
    [event setText:[NSString stringWithFormat:@"%lu",(unsigned long)event.tag]];
}
-(void) additionalPressureAppliedToButton:(id)sender {
    [self removeEventFromViewStack:[self.eventViews count]-1];
}

@end
