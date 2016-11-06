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

@class CIStoryModel;
@class CIStoryItemModel;

@interface CIFeedFlowController()<CIHomeViewControllerDelegate, CIStoryViewControllerDelegate, CIStoryItemViewControllerDelegate>

@end

@implementation CIFeedFlowController

+ (CIBaseFlowController *)mainController {
    static CIFeedFlowController *mainController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mainController = [CIFeedFlowController new];
    });
    return mainController;
}

- (CIBaseViewController *)initialViewController {
    return [[CIHomeViewController alloc] initWithNibName:@"CIHomeViewController" bundle:nil];
}

#pragma mark - CIHomeViewControllerDelegate

- (void)moveToStory:(CIStoryModel *)story {
    CIStoryViewController *vc = [[CIStoryViewController alloc] initWithNibName:@"CIStoryViewController" bundle:nil];
    vc.story = story;
    [self pushViewController: vc];
}

#pragma mark - CIStoryViewControllerDelegate

- (void)moveToStoryItem:(CIStoryItemModel *)storyItem {
    CIStoryItemViewController *vc = [[CIStoryItemViewController alloc] initWithNibName:@"CIStoryItemViewController" bundle:nil];
    vc.storyItem = storyItem;
    [self pushViewController: vc];
}

#pragma mark - CIStoryItemViewControllerDelegate

@end
