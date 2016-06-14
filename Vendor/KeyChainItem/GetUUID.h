//
//  GetUUID.h
//  iEmployee
//
//  Created by mac on 15/12/8.
//  Copyright © 2015年 Xiaoting. All rights reserved.
//

#import <Foundation/Foundation.h>

#define   SSKEYSERVER    @"com.caidao1.employee"
#define   DEVEICEUUID    @"deviceUUID"
@interface GetUUID : NSObject
+(NSString *)DeviceIdFromeKeyChain;

@end
