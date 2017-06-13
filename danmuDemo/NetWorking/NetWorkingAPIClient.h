//
//  NetWorkingAPIClient.h
//  AFNetWorking封装使用
//
//  Created by 黄帅 on 16/1/19.
//  Copyright © 2016年 黄帅. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface NetWorkingAPIClient : AFHTTPSessionManager
+(NetWorkingAPIClient *)sharedNetWorkingAPIClient;
@end
