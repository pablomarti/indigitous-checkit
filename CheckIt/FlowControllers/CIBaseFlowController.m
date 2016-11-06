//
//  CIBaseFlowController.m
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIBaseFlowController.h"
#import "CIColors.h"
#import "CIFonts.h"

@interface CIBaseFlowController()<UINavigationControllerDelegate>

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) CIBaseViewController *mainViewController;

@end

@implementation CIBaseFlowController

+ (CIBaseFlowController *)mainController {
    static CIBaseFlowController *mainController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mainController = [CIBaseFlowController new];
    });
    return mainController;
}

- (CIBaseViewController *)initialViewController {
    return [[CIBaseViewController alloc] initWithNibName:@"CIBaseViewController" bundle:nil];
}

- (void)initializeWithWindow:(UIWindow *)window launchOptions:(NSDictionary *)launchOptions {
    self.window = window;
    
    self.mainViewController = [self initialViewController];
    self.mainViewController.delegate = self;
    
    if (self.mainViewController) {
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.mainViewController];
        [self setupNavigationStyle:navController];
        self.window.rootViewController = navController;
    }
}

- (void)initializeWithRootViewController:(UINavigationController *)navController {
    [self setupNavigationStyle:navController];
    self.mainViewController = [self initialViewController];
    self.mainViewController.delegate = self;
    
    NSMutableArray *viewControllers = [NSMutableArray arrayWithArray: @[self.mainViewController]];
    [navController setViewControllers:viewControllers animated:YES];
}

#pragma mark - Common actions

- (void)goBack
{
    [self.mainViewController.navigationController popViewControllerAnimated:YES];
}

- (void)pushViewController:(CIBaseViewController *)vc
{
    vc.delegate = self;
    [self.mainViewController.navigationController pushViewController:vc animated:YES];
}

#pragma mark - Set styles

- (void)setupNavigationStyle:(UINavigationController *)navController {
    [navController.navigationBar setTranslucent: NO];
    [navController.navigationBar setBackgroundColor:[CIColors navigationBarColor]];
    [navController.navigationBar setTintColor:[CIColors navigationBarColor]];
    [navController.navigationBar setBarTintColor:[CIColors navigationBarColor]];
    [navController.navigationBar setOpaque:YES];
    UIFont *font = [CIFonts semiBoldFontForSize: 18.0f];
    navController.navigationBar.titleTextAttributes = @{
                                                        NSFontAttributeName: font,
                                                        NSForegroundColorAttributeName : [CIColors white]
                                                        };
    navController.delegate = self;
}

@end
