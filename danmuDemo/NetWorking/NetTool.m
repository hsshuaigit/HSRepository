//
//  NetTool.m
//  AFNetWorking封装使用
//
//  Created by 黄帅 on 16/1/19.
//  Copyright © 2016年 黄帅. All rights reserved.
//

#import "NetTool.h"
#import "NetWorkingAPIClient.h"
@implementation NetTool


+(NSURLSessionDataTask *)getDataWithSuburl:(NSString*)suburl Parameters:(NSDictionary*)parameters Success:(void(^)(NSURLSessionDataTask *dataTask, id responseObject))success failure:(void(^)(NSURLSessionDataTask *dataTask,NSError *error))failure
{
    return [[NetWorkingAPIClient sharedNetWorkingAPIClient]GET:suburl parameters:parameters progress:nil success:success failure:failure];
}

@end
