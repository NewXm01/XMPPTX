//
//  GetUUID.m
//  iEmployee
//
//  Created by mac on 15/12/8.
//  Copyright © 2015年 Xiaoting. All rights reserved.
//

#import "GetUUID.h"
#import "SSKeychain.h"
#import "SSKeychainQuery.h"

@implementation GetUUID

+(NSString *)DeviceIdFromeKeyChain
{
    NSError *error = nil;
    SSKeychainQuery *query = [[SSKeychainQuery alloc] init];
    query.service = SSKEYSERVER;
    query.account = DEVEICEUUID;
    [query fetch:&error];
    
    NSString  *password = nil;
    if (error) {
        NSLog(@"Password not found");
         password = getUUID();
         [SSKeychain  setPassword:password forService: SSKEYSERVER account:DEVEICEUUID];
   
    }
    else
    {
      password  = [SSKeychain passwordForService:SSKEYSERVER account:DEVEICEUUID error:&error];
    }

    return password;
}


-(void)getname
{
        NSError *error = nil;
        [SSKeychain passwordForService:SSKEYSERVER account:DEVEICEUUID error:&error];
        if ([error code] == errSecItemNotFound) {
            NSLog(@"Password not found");
            NSString *udidstr = getUUID();
            [SSKeychain setPassword: [NSString stringWithFormat:@"%@",udidstr]
                         forService:SSKEYSERVER  account:DEVEICEUUID];
        }
    
}
NSString *getUUID()
{
    CFUUIDRef uuid_ref = CFUUIDCreate(NULL);
    CFStringRef uuid_string_ref= CFUUIDCreateString(NULL, uuid_ref);
    CFRelease(uuid_ref);
    NSString *uuid = [NSString stringWithString:(__bridge NSString*)uuid_string_ref];
    uuid = [uuid stringByReplacingOccurrencesOfString:@"-" withString:@""];
    
    CFRelease(uuid_string_ref);
    return uuid;
}
@end
