//
//  Login.m
//  XmppTX
//
//  Created by zjj on 16/3/23.
//  Copyright © 2016年 zjj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Login.h"

@interface Login()
{
    UIView *loginView;
    UIView *passWordView;
    UIView *userNameView;
    UITextField *passWordTextField;
    UITextField *userNameTextField;

}

@end

@implementation Login


-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        //
    }
        return self;
}

-(void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    loginView = [[UIView alloc]init];
    loginView.layer.borderWidth = 0.5;
    loginView.layer.borderColor = [[UIColor lightGrayColor] CGColor];
    loginView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"login_background.png"]];
    [self.view addSubview: loginView];
    
    userNameTextField = [[UITextField alloc]init];
    userNameTextField.delegate = self;
    userNameTextField.layer.cornerRadius = 5;
    userNameTextField.clearsOnBeginEditing = YES;
    userNameTextField.textAlignment = NSTextAlignmentLeft;
    userNameTextField.font = [UIFont systemFontOfSize:20];
    [loginView addSubview: userNameTextField];
    
    passWordTextField = [[UITextField alloc]init];
    passWordTextField.delegate = self;
    passWordTextField.layer.cornerRadius = 5;
    passWordTextField.layer.borderColor = [[UIColor lightGrayColor] CGColor];
    passWordTextField.clearsOnBeginEditing = YES;
    passWordTextField.textAlignment = NSTextAlignmentLeft;
    passWordTextField.font = [UIFont systemFontOfSize:20];
    [loginView addSubview: passWordTextField];
    
    
    [loginView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addConstraints:@[[NSLayoutConstraint constraintWithItem:loginView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0],
                                [NSLayoutConstraint constraintWithItem:loginView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0],
                                [NSLayoutConstraint constraintWithItem:loginView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:200],
                                [NSLayoutConstraint constraintWithItem:loginView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:250]]];
    


    
    
    [userNameTextField setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [loginView addConstraints:@[[NSLayoutConstraint constraintWithItem:userNameTextField attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:loginView attribute:NSLayoutAttributeTop multiplier:1 constant:10],
                                [NSLayoutConstraint constraintWithItem:userNameTextField attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:userNameTextField attribute:NSLayoutAttributeLeft multiplier:1 constant:20],
                                [NSLayoutConstraint constraintWithItem:userNameTextField attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:1 constant:20],
                                [NSLayoutConstraint constraintWithItem:userNameTextField attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth multiplier:1 constant:80]]];
    
}


-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}


//login
-(void)loginBtnPressed:(id)sender
{
    [self->userNameTextField setText:nil];
}

-(void)rememberBtn:(id)sender
{
//    NSString *message = @"";
//
//    NSDictionary *messageDic = [NSDictionary dictionaryWithObjectsAndKeys:@"", @"file", [NSNumber numberWithInt:1], @"messageType", message, @"Text", nil];
}

@end