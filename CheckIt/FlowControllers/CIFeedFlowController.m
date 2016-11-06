//
//  CIFeedFlowController.m
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIFeedFlowController.h"
#import "CIHomeViewController.h"
#import "CIStoryViewController.h"
#import "CIStoryItemViewController.h"

@interface CIFeedFlowController()<CIHomeViewControllerDelegate, CIStoryViewControllerDelegate, CIStoryItemViewControllerDelegate>

@end

@implementation CIFeedFlowController

- (CIBaseViewController *)initialViewController {
    return [[CIHomeViewController alloc] initWithNibName:@"CIHomeViewController" bundle:nil];
}

#pragma mark - CIHomeViewControllerDelegate

- (void)moveToStory {
}

#pragma mark - CIStoryViewControllerDelegate

- (void)moveToStoryItem {
}

#pragma mark - CIStoryItemViewControllerDelegate

@end
