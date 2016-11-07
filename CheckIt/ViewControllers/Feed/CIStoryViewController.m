//
//  CIStoryViewController.m
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIStoryViewController.h"
#import "CIStoryModel.h"
#import "CIStoryItemModel.h"
#import "CIQuestionModel.h"
#import "CIStoryTableViewCell.h"
#import "CIStoryAtLeftTableViewCell.h"
#import "CIStoryAtRightTableViewCell.h"
#import "CIStoryQuestionTableViewCell.h"
#import "CIStoryDateTableViewCell.h"

@interface CIStoryViewController ()

@property (nonatomic, strong) NSArray *storyItems;
@property (nonatomic, assign) NSInteger cellCounter;

@end

@implementation CIStoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self displayCustomTitle:@"Timeline"];
    [self displayBackButton];
}

- (void)viewDidLayoutSubviews {
    [self loadData];
}

- (void)viewControllerConfiguration {
    self.cellCounter = 0;
    
    UINib *nib1 = [UINib nibWithNibName:@"CIStoryAtLeftTableViewCell" bundle:nil];
    [self.tableView registerNib:nib1 forCellReuseIdentifier:@"CIStoryAtLeftTableViewCell"];
    
    UINib *nib2 = [UINib nibWithNibName:@"CIStoryAtRightTableViewCell" bundle:nil];
    [self.tableView registerNib:nib2 forCellReuseIdentifier:@"CIStoryAtRightTableViewCell"];
    
    UINib *nib3 = [UINib nibWithNibName:@"CIStoryQuestionTableViewCell" bundle:nil];
    [self.tableView registerNib:nib3 forCellReuseIdentifier:@"CIStoryQuestionTableViewCell"];
    
    UINib *nib4 = [UINib nibWithNibName:@"CIStoryDateTableViewCell" bundle:nil];
    [self.tableView registerNib:nib4 forCellReuseIdentifier:@"CIStoryDateTableViewCell"];
}

#pragma mark - Tableview Management

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.storyItems count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *v = [UIView new];
    [v setBackgroundColor:[UIColor clearColor]];
    return v;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dictionary = [self.storyItems objectAtIndex:indexPath.section];
    if ([[dictionary objectForKey:@"key"] isEqualToString: STORY_ITEM_KEY]) {
        CIStoryTableViewCell *cell;
        if(self.cellCounter % 2 == 0) {
            cell = [tableView dequeueReusableCellWithIdentifier: @"CIStoryAtLeftTableViewCell"];
            self.cellCounter++;
        }
        else {
            cell = [tableView dequeueReusableCellWithIdentifier: @"CIStoryAtRightTableViewCell"];
        }
        cell.storyItem = (CIStoryItemModel *)[dictionary objectForKey:@"item"];
        return cell;
    }
    else if([[dictionary objectForKey:@"key"] isEqualToString: STORY_QUESTION_KEY]){
        CIStoryQuestionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"CIStoryQuestionTableViewCell"];
        cell.question = (CIQuestionModel *)[dictionary objectForKey:@"item"];
        return cell;
    }
    else {
        CIStoryDateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"CIStoryDateTableViewCell"];
        [cell.lblDate setText: [dictionary objectForKey:@"item"]];
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 120.0f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *dictionary = [self.storyItems objectAtIndex:indexPath.section];
    if ([[dictionary objectForKey:@"key"] isEqualToString: STORY_ITEM_KEY]) {
        [self.delegate moveToStoryItem: (CIStoryItemModel *)[dictionary objectForKey:@"item"]];
    }
    else {
        [self.delegate moveToStoryQuestion: (CIQuestionModel *)[dictionary objectForKey:@"item"]];
    }
}

#pragma mark - Helpers

- (void)loadData {
    self.storyItems = [self.story storyElements];
    [self.tableView reloadData];
}

@end
