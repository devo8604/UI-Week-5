//
//  SecondView.m
//  UI Week 5
//
//  Created by Devon Smith on 6/9/13.
//  Copyright (c) 2013 Devon Smith. All rights reserved.
//

#import "SecondView.h"
#import "ViewController.h"

@implementation SecondView

@synthesize label, button;

ViewController *viewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    CGRect frame = CGRectMake(20, 10, 280, 50);
    label = [[UILabel alloc] initWithFrame:frame];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont fontWithName:@"verdana" size:20];
    label.text = @"Second View";
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle: @"View Change"
                                message: @"You have switched Views"
                               delegate: self
                      cancelButtonTitle: @"OK"
                      otherButtonTitles: nil];
 
    [self.view addSubview:label];
    [alert show];
    
}


@end
