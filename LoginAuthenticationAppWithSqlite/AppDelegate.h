//
//  AppDelegate.h
//  LoginAuthenticationAppWithSqlite
//
//  Created by tops on 9/6/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) NSString *dbPath;
-(void) setMyDB;

@end

