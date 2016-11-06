//
//  CIStoryModel.m
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIStoryModel.h"
#import "CIStoryItemModel.h"
#import "CIQuestionModel.h"

NSString * const STORY_ITEM_KEY         = @"story_item";
NSString * const STORY_QUESTION_KEY     = @"story_question";

@implementation CIStoryModel

- (NSArray *)storyElements
{
    NSMutableArray *elements = [NSMutableArray new];
    
    for (int j = 0; j < 3; j++) {
        NSDate *date = [NSDate new];
        date = [date dateByAddingTimeInterval:-1*j*24*60*60];
        
        for(int k = 0; k < 3; k++) {
            NSArray *imagesURLs; //TODO
            CIStoryItemModel *item = [CIStoryItemModel new];
            [item setTitle:@"Custom Title"];
            [item setContent:@"Custom content"];
            [item setDate: date];
            [item setImagesURLs: imagesURLs];
            [elements addObject: @{@"key": STORY_ITEM_KEY, @"item": item}];
        }
        
        NSURL *questionImageURL = [NSURL URLWithString:@""]; //TODO
        CIQuestionModel *question = [CIQuestionModel new];
        [question setTitle:@"Question title"];
        [question setContent:@"Question content"];
        [question setImageURL:questionImageURL];
        [question setDate: date];
        [elements addObject: @{@"key": STORY_QUESTION_KEY, @"item": question}];
    }
    
    return elements;
}

@end
