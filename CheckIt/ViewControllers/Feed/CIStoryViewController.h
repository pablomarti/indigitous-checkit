//
//  CIStoryViewController.h
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIBaseViewController.h"

@class CIStoryModel;
@class CIStoryItemModel;
@class CIQuestionModel;

@protocol CIStoryViewControllerDelegate

- (void)moveToStoryItem:(CIStoryItemModel *)storyItem;
- (void)moveToStoryQuestion:(CIQuestionModel *)questionItem;

@end

@interface CIStoryViewController : CIBaseViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) CIStoryModel *story;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@end
