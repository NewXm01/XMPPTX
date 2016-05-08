//
//  Login.h
//  XmppTX
//
//  Created by zjj on 16/3/23.
//  Copyright © 2016年 zjj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Login : UIViewController<UITextFieldDelegate>
{
    NSLayoutConstraint *con;
}
@property (strong, nonatomic)  UITextField *userNameTextField;
@property (strong, nonatomic)  UITextField *passWordTextField;
-(void)loginBtnPressed:(id)sender;
-(void)rememberBtn:(id)sender;


@end
