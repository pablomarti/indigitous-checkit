//
//  CIHomeViewController.m
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIHomeViewController.h"
#import "CIHomeCollectionViewCell.h"

@interface CIHomeViewController ()

@property (nonatomic, strong) NSMutableArray *data;

@end

@implementation CIHomeViewController

- (void)viewControllerConfiguration {
    UINib *nib = [UINib nibWithNibName:@"CIHomeCollectionViewCell.h" bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:@"CIHomeCollectionViewCell"];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.data count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CIHomeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CIHomeCollectionViewCell" forIndexPath:indexPath];
    
    return cell;
}

@end
