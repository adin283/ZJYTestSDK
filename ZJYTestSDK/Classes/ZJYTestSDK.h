//
//  ZJYSmartHomeSDK.h
//  SmartHome
//
//  Created by Kevin on 2017/11/1.
//  Copyright © 2017年 KevinLab. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ZJYTestSDK : NSObject

+ (instancetype)sharedInstance;

- (void)hekrConfig:(NSDictionary *)config launchOptions:(NSDictionary *)launchOptions;

- (void)loginWithUsername:(NSString *)username password:(NSString *)password;

@end
