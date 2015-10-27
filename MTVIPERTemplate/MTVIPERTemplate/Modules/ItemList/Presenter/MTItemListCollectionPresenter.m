//
//  MTItemListCollectionPresenter.m
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTItemListCollectionPresenter.h"
#import "MTItemListCollectionViewInterface.h"
#import "MTItemListWireframe.h"

@interface MTItemListCollectionPresenter ()

@property (nonatomic, weak) MTItemListWireframe *wireframe;
@property (nonatomic) BOOL isFirstAppearance;

@end

@implementation MTItemListCollectionPresenter

- (UIViewController<MTItemListCollectionViewInterface> *)userInterface
{
    NSAssert(_userInterface != nil, @"userInterface is equal to nil");
    return _userInterface;
}

#pragma mark - MTItemListTablePresenterInterface

- (void)onWillAppearView
{
    if (self.isFirstAppearance) {
        [self.userInterface updateFooterLabelWithText:@"Data Loading..."];
    }
}

- (void)onDidRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [self.userInterface reloadData];
}

- (NSUInteger)numberOfSections
{
    return 0;
}

- (NSUInteger)numberOfItemsInSection:(NSInteger)section
{
    return 0;
}

- (void)configureCell:(UIView *)cell
          atIndexPath:(NSIndexPath *)indexPath
{
    //
}

- (CGSize)sizeForCellAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeZero;
}

- (void)didSelectItemAtIndexPath:(NSIndexPath *)indexPath
                        fromRect:(CGRect)rect
{
    //
}

- (void)registerCellForCollectionView:(UICollectionView *)collectionView
{
    //
}

- (void)registerCellForTableView:(UITableView *)tableView
{
    //
}

- (NSString *)cellIdentifierForIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

@end
