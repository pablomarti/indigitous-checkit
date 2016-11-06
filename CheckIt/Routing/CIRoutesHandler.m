//
//  CIRoutesHandler.m
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIRoutesHandler.h"
#import <JLRoutes/JLRoutes.h>
#import "CIFeedFlowController.h"

@implementation CIRoutesHandler

+ (UINavigationController *)rootViewControllerWithRootViewController:(UINavigationController *)rootVC {
    static UINavigationController *rootViewController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        rootViewController = rootVC;
    });
    return rootViewController;
}

+ (void)setRouteHandlersWithRootViewController:(UINavigationController *)rootViewController {
    [CIRoutesHandler rootViewControllerWithRootViewController:rootViewController];
    
    [JLRoutes addRoute:@"/flowcontrollers/:name" handler:^BOOL(NSDictionary *parameters) {
        NSString *name = parameters[@"name"];
        
        if ([name isEqualToString:@"feed"])
        {
            [[CIFeedFlowController mainController] initializeWithRootViewController: rootViewController];
        }
        
        return YES;
    }];
}

+ (void)routeApplication:(UIApplication *)application launchOptions:(NSDictionary *)launchOptions {
    if ([UIApplication sharedApplication].applicationState != UIApplicationStateActive) {
        return;
    }
    
    UILocalNotification *notification = [launchOptions objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey];
    notification = notification ?: [launchOptions objectForKey:UIApplicationLaunchOptionsLocalNotificationKey];
    NSDictionary *userInfo = notification ? notification.userInfo : nil;
    
    [self routeNotificationUserInfo:userInfo];
}

+ (BOOL)routeApplication:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return [JLRoutes routeURL:url];
}

@end
