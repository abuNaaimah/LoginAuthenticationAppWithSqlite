//
//  DBHandler.h
//  LoginAuthenticationAppWithSqlite
//
//  Created by tops on 9/6/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import <sqlite3.h>

@interface DBHandler : NSObject
{
    sqlite3 *mySqlite;
    AppDelegate *appDel;
}

@property (strong, nonatomic) NSString *strDBPath;
-(BOOL) DMLOperation : (NSString *) strQuery;
-(NSMutableArray *) selectOperation : (NSString *) strQuery;


@end
