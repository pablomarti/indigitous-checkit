//
//  StoryQuestionTableViewCell.h
//  CheckIt
//
//  Created by Devserker on 11/6/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CIQuestionModel.h"

@interface CIStoryQuestionTableViewCell : UITableViewCell

@property (strong, nonatomic) CIQuestionModel *question;
@property (weak, nonatomic) IBOutlet UIImageView *imgQuestion;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@end
