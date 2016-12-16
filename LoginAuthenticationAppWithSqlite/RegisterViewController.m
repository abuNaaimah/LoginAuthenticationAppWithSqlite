//
//  RegisterViewController.m
//  LoginAuthenticationAppWithSqlite
//
//  Created by tops on 9/6/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController
@synthesize txtEmail, txtPassword;//txtRePassword;


- (void)viewDidLoad {
    [super viewDidLoad];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnCancel:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)btnSave:(UIButton *)sender {
    
//    if ([txtEmail.text isEqual:@""] || [txtPassword.text isEqual:@""] || [txtRePassword.text  isEqual: @""]) {
//        UIAlertAction *alert = [[UIAlertAction alloc] init];
    
    //}
    
    NSString *strQuery = [[NSString alloc]initWithFormat:@"insert into LoginInfo(email,password) values('%@','%@')",txtEmail.text, txtPassword.text];
    
    
    dh = [[DBHandler alloc] init];
    
    if ([dh DMLOperation:strQuery]) {
        NSLog(@"User has been registered now.");
    }
    else{
        NSLog(@"Registration Process failed!!!");
    }
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
