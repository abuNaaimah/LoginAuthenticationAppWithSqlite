//
//  DBHandler.m
//  LoginAuthenticationAppWithSqlite
//
//  Created by tops on 9/6/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import "DBHandler.h"

@implementation DBHandler
@synthesize strDBPath;

-(id)init{
    appDel = [[UIApplication sharedApplication]delegate];
    strDBPath = appDel.dbPath;
    return self;
}

-(BOOL)DMLOperation:(NSString *)strQuery{
    
    BOOL status = false;
    if (sqlite3_open([strDBPath UTF8String], &mySqlite) == SQLITE_OK) {
        
        sqlite3_stmt *nonQuery;
        if (sqlite3_prepare_v2(mySqlite, [strQuery UTF8String], -1, &nonQuery, nil) == SQLITE_OK) {
            
            sqlite3_step(nonQuery);
            status = true;
        }
        sqlite3_finalize(nonQuery);
    }
    sqlite3_close(mySqlite);
    return status;
}

-(NSMutableArray *)selectOperation:(NSString *)strQuery{
    
    NSMutableArray *tempArray = [[NSMutableArray alloc]init];
    
    if (sqlite3_open([strDBPath UTF8String], &mySqlite) == SQLITE_OK) {
        
        sqlite3_stmt *nonQuery;
        if (sqlite3_prepare_v2(mySqlite, [strQuery UTF8String], -1, &nonQuery, nil) == SQLITE_OK) {
            
            while(sqlite3_step(nonQuery) == SQLITE_ROW)
            {
                NSMutableDictionary *tempDict = [[NSMutableDictionary alloc]init];
                
                NSString *strId = [[NSString alloc]initWithUTF8String:(char *)sqlite3_column_text(nonQuery, 0)];
                NSString *strEmail = [[NSString alloc]initWithUTF8String:(char *)sqlite3_column_text(nonQuery, 1)];
                NSString *strPassword = [[NSString alloc]initWithUTF8String:(char *)sqlite3_column_text(nonQuery, 2)];
                
                [tempDict setObject:strId forKey:@"id"];
                [tempDict setObject:strEmail forKey:@"email"];
                [tempDict setObject:strPassword forKey:@"password"];
                
                [tempArray addObject:tempDict];
            }
        }
        sqlite3_finalize(nonQuery);
    }
    sqlite3_close(mySqlite);
    return tempArray;
}

@end
