//
//  StoryQuestionTableViewCell.m
//  CheckIt
//
//  Created by Devserker on 11/6/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIStoryQuestionTableViewCell.h"

@implementation CIStoryQuestionTableViewCell

- (void)didMoveToSuperview {
    [self.lblTitle setText: self.question.content];
}

@end
