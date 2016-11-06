//
//  CIBaseViewController.h
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CIBaseViewController : UIViewController

@property (nonatomic, strong) id delegate;


- (void)displayCustomTitle:(NSString *)title;
- (void)displayBackButton;
- (void)displayShareButton;
- (void)viewControllerConfiguration;
- (void)displayLoader;
- (void)hideLoader;

@end
