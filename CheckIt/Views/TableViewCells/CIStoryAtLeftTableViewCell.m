//
//  CIStoryAtLeftTableViewCell.m
//  CheckIt
//
//  Created by Devserker on 11/6/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIStoryAtLeftTableViewCell.h"

@implementation CIStoryAtLeftTableViewCell

- (void)didMoveToSuperview {
    [self.lblTitle setText: self.storyItem.content];
}

@end
