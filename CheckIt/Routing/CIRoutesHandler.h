//
//  CIRoutesHandler.h
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CIRoutesHandler : NSObject

+ (void)setRouteHandlersWithRootViewController:(UINavigationController *)rootViewController;

+ (void)routeNotificationUserInfo:(NSDictionary *)userInfo;
+ (void)routeApplication:(UIApplication *)application launchOptions:(NSDictionary *)launchOptions;
+ (BOOL)routeApplication:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

@end
