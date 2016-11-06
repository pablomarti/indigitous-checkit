//
//  CIStoryTableViewCell.h
//  CheckIt
//
//  Created by Devserker on 11/6/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CIStoryItemModel;

@interface CIStoryTableViewCell : UITableViewCell

@property (strong, nonatomic) CIStoryItemModel *storyItem;

@end
