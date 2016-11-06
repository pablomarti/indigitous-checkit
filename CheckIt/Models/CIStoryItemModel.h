//
//  CIStoryItemModel.h
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIModel.h"

@class CIQuestion;

@interface CIStoryItemModel : CIModel

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *content;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSArray<Optional> *imagesURLs;
@property (nonatomic, strong) CIQuestion<Ignore> *question;

@end
