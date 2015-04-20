//
//  SPEventViewController.m
//  Student Planer
//
//  Created by Ryan on 3/11/15.
//  Copyright (c) 2015 Ryan Stentz. All rights reserved.
//

#import "SPEventViewController.h"

@implementation SPEventViewController
//Basic view controller for an event.  The view consists of an image view as well as a label to display event information.
//TODO:  Modify the literals to some global view size variables

-(SPEventViewController*) init {
    self = [super init];
    if(self) {
        self.position = 50;
        self.length = 131; //Temporary, replace with a propper scale thingy
        self.view = [[UIImageView alloc] initWithFrame:CGRectMake(50, self.position, 250, self.length)];
        self.eventLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 75, 75)];
        self.dataDelegate = [[SPEventData alloc] init];
        [self setText:@"Default Text"];
        [self.view addSubview:self.eventLabel];
        return self;
    }
    return false;
}

-(SPEventViewController*) initWithImage:(UIImage *)image {
    self = [self init];
    if(self) {
        self.view.image = [image copy];
        //self.length = [self.view.image size].height;
        self.view.frame = CGRectMake(50, self.position, 250, self.length);
        return self;
    }
    return false;
}

-(SPEventViewController*) initWithSubject:(NSString *)subject { //The coresponding pictures will be named after the subjects
    NSString* path = [[NSBundle mainBundle] pathForResource:subject ofType:@"png"];
    UIImage* image = [UIImage imageWithContentsOfFile:path];
    
    self = [self initWithImage:image];
    if(self) {
        return self;
    }
    return false;
}

-(void) relocate:(NSUInteger)position {
    self.position = position;
    self.view.frame = CGRectMake(50, self.position, 250, self.length); //Update the image location
}

-(void) setText:(NSString *)text {
    self.dataDelegate.text = text;
    self.eventLabel.text = text;
}

@synthesize tag = _tag;
-(void) setTag:(NSUInteger)tag { //CRASH:  Come back to how to do this shit
    _tag = tag;
    self.dataDelegate.tag = tag;
}

-(NSUInteger) tag {
    return _tag;
}

-(void) destroy {
    //Reserved for a file managment type function
}

@end
