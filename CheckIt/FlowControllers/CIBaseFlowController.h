//
//  CIBaseFlowController.h
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CIBaseViewController.h"

@interface CIBaseFlowController : NSObject

+ (CIBaseFlowController *)mainController;
- (CIBaseViewController *)initialViewController;
- (void)initializeWithWindow:(UIWindow *)window launchOptions:(NSDictionary *)launchOptions;
- (void)initializeWithRootViewController:(UINavigationController *)vc;

@end
