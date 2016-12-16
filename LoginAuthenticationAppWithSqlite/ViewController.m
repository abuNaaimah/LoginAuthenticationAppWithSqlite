//
//  ViewController.m
//  LoginAuthenticationAppWithSqlite
//
//  Created by tops on 9/6/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import "ViewController.h"
#import "RegisterViewController.h"

@interface ViewController ()
{
    DBHandler *dh;
    NSArray *tempArray;
}
@end

@implementation ViewController
@synthesize txtThisEmail, txtThisPassword;

-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES];
}
- (void)viewDidLoad {

    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];

    dh =[[DBHandler alloc]init];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnLogin:(UIButton *)sender
{
    NSString *strquery =[[NSString alloc]initWithFormat:@"select * from LoginInfo where email = '%@' and password = '%@'",txtThisEmail.text, txtThisPassword.text];
    NSMutableArray *data = [dh selectOperation:strquery];
    if(data.count==1)
    {
        _lblMessage.text = @"Congratulation..! You are logged in now..!";
    }
    else
    {
        _lblMessage.text = @"Oooppss..! You are missing something..!";
    }
}

//- (IBAction)btnLogup:(UIButton *)sender
//{
//
//    
//}


@end
