//
//  CIQuestion.h
//  CheckIt
//
//  Created by Devserker on 11/6/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIModel.h"

@interface CIQuestion : CIModel

@property (nonatomic, strong) NSString<Optional> *title;
@property (nonatomic, strong) NSString<Optional> *content;
@property (nonatomic, strong) NSURL<Optional> *imageURL;
@property (nonatomic, strong) NSDate *date;

@end
