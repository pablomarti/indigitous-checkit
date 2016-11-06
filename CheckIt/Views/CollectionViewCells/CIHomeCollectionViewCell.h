//
//  CIHomeCollectionViewCell.h
//  CheckIt
//
//  Created by Devserker on 11/6/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CIStoryModel.h"

@interface CIHomeCollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) CIStoryModel *story;

@property (weak, nonatomic) IBOutlet UIImageView *imgMain;
@property (weak, nonatomic) IBOutlet UIView *viewMessage;
@property (weak, nonatomic) IBOutlet UILabel *lblMessage;

@end
