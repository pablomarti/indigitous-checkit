//
//  CIStoryAtLeftTableViewCell.h
//  CheckIt
//
//  Created by Devserker on 11/6/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CIStoryTableViewCell.h"

@interface CIStoryAtLeftTableViewCell : CIStoryTableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgItem;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@end
