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

- (void)displayLoader
{
    if(!self.activityIndicator)
    {
        self.activityIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        self.activityIndicator.frame = CGRectMake(0.0, 0.0, 40.0, 40.0);
        self.activityIndicator.center = self.view.center;
        [self.view addSubview:self.activityIndicator];
        [self.activityIndicator bringSubviewToFront:self.view];
        [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
        [self.activityIndicator startAnimating];
    }
}

- (void)hideLoader
{
    if(self.activityIndicator)
    {
        [self.activityIndicator stopAnimating];
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        self.activityIndicator = nil;
    }
}

@end
