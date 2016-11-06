//
//  CIBaseViewController.m
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIBaseViewController.h"

@interface CIBaseViewController ()

@property (nonatomic, strong) UIActivityIndicatorView *activityIndicator;

@end

@implementation CIBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self viewControllerConfiguration];
}

- (void)viewControllerConfiguration {
}

#pragma mark - Common methods

- (void)displayCustomTitle:(NSString *)title
{
    [self.navigationItem setTitle:title];
}

- (void)displayBackButton {
    UIButton *back = [[UIButton alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 14.0f, 24.0f)];
    [back setImage:[UIImage imageNamed:@"back_arrow"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(handleBack) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *backImage = [[UIBarButtonItem alloc] initWithCustomView:back];
    [self.navigationItem setLeftBarButtonItems:@[backImage]];
}

- (void)displayShareButton {
    UIButton *shareButton = [[UIButton alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 21.0f, 28.0f)];
    [shareButton setImage:[UIImage imageNamed:@"blue_share"] forState:UIControlStateNormal];
    [shareButton addTarget:self action:@selector(handleShare) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *shareButtonItem = [[UIBarButtonItem alloc] initWithCustomView:shareButton];
    [self.navigationItem setRightBarButtonItems:@[shareButtonItem]];
}

- (void)displayLoader {
    if(!self.activityIndicator) {
        self.activityIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        self.activityIndicator.frame = CGRectMake(0.0, 0.0, 40.0, 40.0);
        self.activityIndicator.center = self.view.center;
        [self.view addSubview:self.activityIndicator];
        [self.activityIndicator bringSubviewToFront:self.view];
        [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
        [self.activityIndicator startAnimating];
    }
}

- (void)hideLoader {
    if(self.activityIndicator) {
        [self.activityIndicator stopAnimating];
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        self.activityIndicator = nil;
    }
}

#pragma mark - Handlers

- (void)handleBack {
    [self.delegate goBack];
}

- (void)handleShare {
}

@end
