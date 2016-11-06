//
//  CIHomeViewController.h
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIBaseViewController.h"

@class CIStoryModel;
@class CIStoryItemModel;
@class CIQuestion;

@protocol CIHomeViewControllerDelegate

- (void)moveToStory:(CIStoryModel *)story;

@end

@interface CIHomeViewController : CIBaseViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
