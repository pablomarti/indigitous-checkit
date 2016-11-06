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
#import "CIQuestion.h"

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
        NSMutableArray *items = [NSMutableArray new];
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
                [items addObject:item];
            }
            
            NSURL *questionImageURL = [NSURL URLWithString:@""]; //TODO
            CIQuestion *question = [CIQuestion new];
            [question setTitle:@"Question title"];
            [question setContent:@"Question content"];
            [question setImageURL:questionImageURL];
            [question setDate: date];
        }
        
        NSURL *storyImageURL = [NSURL URLWithString:@""]; //TODO
        CIStoryModel *story = [CIStoryModel new];
        [story setTitle:@"Custom title"];
        [story setContent:@"Custom description"];
        [story setImageURL:storyImageURL];
        [story setStoryItems:items];
        [self.stories addObject:story];
    }
}

@end
