//
//  CIStoryModel.h
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIModel.h"

extern NSString * const STORY_ITEM_KEY;
extern NSString * const STORY_QUESTION_KEY;
extern NSString * const STORY_DATE_KEY;

@class CIStoryItemModel;
@class CIQuestion;

@interface CIStoryModel : CIModel

@property (nonatomic, strong) NSString<Optional> *title;
@property (nonatomic, strong) NSString<Optional> *content;
@property (nonatomic, strong) NSURL<Optional> *imageURL;
@property (nonatomic, strong) NSArray<CIStoryItemModel *> *storyItems;
@property (nonatomic, strong) NSArray<CIQuestion *> *questions;

- (NSArray *)storyElements;

@end
