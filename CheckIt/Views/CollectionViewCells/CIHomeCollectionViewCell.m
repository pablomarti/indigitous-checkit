//
//  CIHomeCollectionViewCell.m
//  CheckIt
//
//  Created by Devserker on 11/6/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIHomeCollectionViewCell.h"

@implementation CIHomeCollectionViewCell


- (void)didMoveToSuperview {
    [self.lblMessage setText: self.story.title];
}

@end
