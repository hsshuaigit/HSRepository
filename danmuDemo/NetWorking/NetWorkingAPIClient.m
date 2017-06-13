//
//  NetWorkingAPIClient.m
//  AFNetWorking封装使用
//
//  Created by 黄帅 on 16/1/19.
//  Copyright © 2016年 黄帅. All rights reserved.
//

#import "NetWorkingAPIClient.h"
static NetWorkingAPIClient *netWorkingClient=nil;
@implementation NetWorkingAPIClient
+(NetWorkingAPIClient *)sharedNetWorkingAPIClient
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        netWorkingClient=[[NetWorkingAPIClient alloc]initWithBaseURL:[NSURL URLWithString:@""]];
        netWorkingClient.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        //设置返回原生状态数据：返回NSData类型
        netWorkingClient.responseSerializer = [AFHTTPResponseSerializer serializer];
        //返回的数据是解析完的json数据
        //netWorkingClient.responseSerializer = [AFJSONResponseSerializer serializer];
        //返回的数据是解析完的XML数据
        //netWorkingClient.responseSerializer = [AFXMLParserResponseSerializer serializer];
    });
    return netWorkingClient;
}
@end
