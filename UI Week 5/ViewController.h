//
//  ViewController.h
//  UI Week 5
//
//  Created by Devon Smith on 6/9/13.
//  Copyright (c) 2013 Devon Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *label;
    UIButton *button;
    UITextField *textfield;
}

@property (nonatomic, retain) UILabel *label;
@property (nonatomic, retain) UIButton *button;
@property (nonatomic, retain) UITextField *textfield;

- (IBAction) buttonClicked: (id) sender;


@end
