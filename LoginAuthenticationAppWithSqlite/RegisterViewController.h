//
//  RegisterViewController.h
//  LoginAuthenticationAppWithSqlite
//
//  Created by tops on 9/6/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import "ViewController.h"

#import "DBHandler.h"



@interface RegisterViewController : ViewController
{
    NSArray *resultArray;
    DBHandler *dh;
}

@property (weak, nonatomic) IBOutlet UITextField *txtFName;
@property (weak, nonatomic) IBOutlet UITextField *txtLName;
@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@property (weak, nonatomic) IBOutlet UITextField *txtMobile;
@property (weak, nonatomic) IBOutlet UITextField *txtBatchName;
@property (weak, nonatomic) IBOutlet UITextField *txtCity;
@property (weak, nonatomic) IBOutlet UITextField *txtDOJ;
@property (weak, nonatomic) IBOutlet UIDatePicker *dojPicker;



@end
