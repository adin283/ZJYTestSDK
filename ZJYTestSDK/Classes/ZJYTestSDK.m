//
//  ZJYSmartHomeSDK.m
//  SmartHome
//
//  Created by Kevin on 2017/11/1.
//  Copyright © 2017年 KevinLab. All rights reserved.
//

#import "ZJYTestSDK.h"
#import "HekrNineSDK/HekrAPI.h"

@implementation ZJYTestSDK


+ (instancetype)sharedInstance
{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

- (instancetype)init
{
    if (self = [super init]) {

    }
    return self;
}

- (void)hekrConfig:(NSDictionary *)config launchOptions:(NSDictionary *)launchOptions
{
    [[Hekr sharedInstance] config:config startPage:nil launchOptions:launchOptions];
}

- (void)loginWithUsername:(NSString *)username password:(NSString *)password
{
    [[Hekr sharedInstance] login:username password:password callbcak:^(HekrUserToken *user, NSError *error) {
        NSLog(@"user info:%@", user);
        NSLog(@"error info:%@", error);
    }];
}

@end
