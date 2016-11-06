//
//  CIStoryAtRightTableViewCell.h
//  CheckIt
//
//  Created by Devserker on 11/6/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CIStoryItemModel;

@interface CIStoryAtRightTableViewCell : UITableViewCell

@property (strong, nonatomic) CIStoryItemModel *storyItem;
@property (weak, nonatomic) IBOutlet UIImageView *imgItem;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@end
