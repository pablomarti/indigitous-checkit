//
//  AppDelegate.m
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "AppDelegate.h"
#import "CIRoutesHandler.h"
#import "CIFeedFlowController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)displayScreensWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [[CIFeedFlowController mainController] initializeWithWindow:self.window launchOptions:launchOptions];
    [self.window makeKeyAndVisible];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self displayScreensWithOptions:launchOptions];
    [CIRoutesHandler setRouteHandlersWithRootViewController:(UINavigationController *)self.window.rootViewController];
    //[CIRoutesHandler routeApplication:application launchOptions:launchOptions];
    
    return YES;
}


- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return [CIRoutesHandler routeApplication:application openURL:url sourceApplication:sourceApplication annotation:annotation];
}


@end
