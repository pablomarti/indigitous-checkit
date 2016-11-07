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
NSString * const STORY_DATE_KEY         = @"story_date";

@implementation CIStoryModel

- (NSArray *)storyElements
{
    NSMutableArray *elements = [NSMutableArray new];
    
    for (int j = 0; j < 3; j++) {
        NSDate *date = [NSDate new];
        date = [date dateByAddingTimeInterval:-1*j*24*60*60];
        
        for(int k = 0; k < 3; k++) {
            NSArray *imagesURLs = [NSArray new]; //TODO
            CIStoryItemModel *item = [CIStoryItemModel new];
            [item setTitle:@"Syrian refugees between war and crackdown"];
            [item setContent:@"More than 1.5 million refugees have made Lebanon their temporary home, but newly elected President Aoun is vowing to send them back to their country."];
            [item setDate: date];
            [item setImagesURLs: imagesURLs];
            [elements addObject: @{@"key": STORY_ITEM_KEY, @"item": item}];
        }
        
        NSURL *questionImageURL = [NSURL URLWithString:@""]; //TODO
        CIQuestionModel *question = [CIQuestionModel new];
        [question setTitle:@"Question"];
        [question setContent:@"What would you do if you were asked to go back to Syria?"];
        [question setImageURL:questionImageURL];
        [question setDate: date];
        [elements addObject: @{@"key": STORY_QUESTION_KEY, @"item": question}];
        
        if(j > 0) {
//            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//            [formatter setDateFormat:@"dd/MM/yyyy"];
//            NSString *dateString = [formatter stringFromDate: date];
//            return dateString;
//            [elements addObject: @{@"key": STORY_DATE_KEY, @"item": date}];
        }
    }
    
    return elements;
}

@end
