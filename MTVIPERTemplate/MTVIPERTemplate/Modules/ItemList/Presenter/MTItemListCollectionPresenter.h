//
//  MTItemListCollectionPresenter.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTRootCollectionPresenter.h"
#import "MTItemListCollectionPresenterInterface.h"

@protocol MTItemListCollectionViewInterface;

@interface MTItemListCollectionPresenter : MTRootCollectionPresenter
<
    MTItemListCollectionPresenterInterface
>

@property (nonatomic, weak) UIViewController<MTItemListCollectionViewInterface> *userInterface;

@end
