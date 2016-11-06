//
//  CIHomeViewController.m
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIHomeViewController.h"
#import "CIHomeCollectionViewCell.h"
#import "CIStoryItemModel.h"
#import "CIStoryItemModel.h"
#import "CIQuestionModel.h"

@interface CIHomeViewController ()

@property (nonatomic, strong) NSMutableArray *stories;

@end

@implementation CIHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self displayCustomTitle:@"Stories"];
}

- (void)viewControllerConfiguration {
    self.stories = [NSMutableArray new];
    [self loadData];
    UINib *nib = [UINib nibWithNibName:@"CIHomeCollectionViewCell" bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:@"CIHomeCollectionViewCell"];
}

- (void)viewDidLayoutSubviews {
    [self.collectionView reloadData];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.stories count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CIHomeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CIHomeCollectionViewCell" forIndexPath:indexPath];
    CIStoryModel *story = [self.stories objectAtIndex:indexPath.row];
    cell.story = story;
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    CIStoryModel *story = [self.stories objectAtIndex:indexPath.row];
    [self.delegate moveToStory: story];
}

#pragma mark - Helper methods

- (void)loadData {
    // TODO: get data from API
    
    for (int i = 0; i < 12; i++) {
        NSURL *storyImageURL = [NSURL URLWithString:@""]; //TODO
        CIStoryModel *story = [CIStoryModel new];
        [story setTitle:@"Syrian refugees between war and crackdown"];
        [story setContent:@"Custom description"];
        [story setImageURL:storyImageURL];
        [self.stories addObject:story];
    }
}

@end
