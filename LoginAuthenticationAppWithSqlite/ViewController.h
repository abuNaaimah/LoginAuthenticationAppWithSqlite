//
//  ViewController.h
//  LoginAuthenticationAppWithSqlite
//
//  Created by tops on 9/6/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) NSString *strEmail;
@property (strong, nonatomic) NSString *strPassword;


@property (weak, nonatomic) IBOutlet UITextField *txtThisEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtThisPassword;
@property (weak, nonatomic) IBOutlet UILabel *loginMsg;


@end

