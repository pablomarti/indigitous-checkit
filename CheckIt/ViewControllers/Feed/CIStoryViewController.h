//
//  CIStoryViewController.h
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIBaseViewController.h"

@protocol CIStoryViewControllerDelegate

- (void)moveToStoryItem;

@end

@interface CIStoryViewController : CIBaseViewController

@end
