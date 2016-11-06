//
//  CIStoryItemViewController.h
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIBaseViewController.h"
#import "CIStoryItemModel.h"

@protocol CIStoryItemViewControllerDelegate

@end

@interface CIStoryItemViewController : CIBaseViewController

@property (nonatomic, strong) CIStoryItemModel *storyItem;

@end
