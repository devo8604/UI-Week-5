//
//  ViewController.m
//  UI Week 5
//
//  Created by Devon Smith on 6/9/13.
//  Copyright (c) 2013 Devon Smith. All rights reserved.
//

#import "ViewController.h"
#import "SecondView.h"

@implementation ViewController

@synthesize label, button, textfield;

SecondView *secondView;

-(void) viewDidLoad {
    CGRect frame = CGRectMake(20, 10, 280, 50);
    
    label = [[UILabel alloc] initWithFrame:frame];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont fontWithName:@"verdana" size:20];
    label.text = @"UI Week 5";
    
    frame = CGRectMake(20, 120, 280, 50);
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = frame;
    [button setTitle:@"OK" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor clearColor];
    
    frame = CGRectMake(20, 70, 280, 40);
    textfield = [[UITextField alloc] initWithFrame:frame];
    textfield.borderStyle = UITextBorderStyleRoundedRect;
    textfield.font = [UIFont systemFontOfSize:20];
    textfield.placeholder = @"Enter some text";
    
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:label];
    [self.view addSubview:button];
    [self.view addSubview:textfield];
    [super viewDidLoad];

}

- (IBAction) hideKeyBackTouched: (id)sender {
    [textfield resignFirstResponder];
}

-(IBAction)buttonClicked:(id)sender {
    NSString *str = [[NSString alloc] initWithFormat:@"You wrote, %@ , in the textfield!",
                     textfield.text];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Hello!"
                                                    message: str
                                                   delegate: self
                                          cancelButtonTitle: @"Okie Dokie"
                                          otherButtonTitles: nil];
    [sender resignFirstResponder];
    [alert show];
}

@end
