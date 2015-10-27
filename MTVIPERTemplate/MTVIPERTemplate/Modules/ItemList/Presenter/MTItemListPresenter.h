//
//  MTItemListPresenter.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTRootPresenter.h"
#import "MTObjectListRequesterIOInterface.h"
#import "MTItemListPresenterInterface.h"

@protocol MTItemListViewInterface;

@class MTItemListWireframe;

@interface MTItemListPresenter : MTRootPresenter
<
    MTItemListPresenterInterface,
    MTObjectListRequesterOutputInterface
>

@property (nonatomic, weak) UIViewController<MTItemListViewInterface> * userInterface;

- (instancetype _Nonnull) __unavailable init;
- (instancetype _Nonnull)initWithObjectListRequester:(id<MTObjectListRequesterInputInterface> _Nonnull)objectListRequester
                                  wireframe:(MTItemListWireframe * _Nonnull)wireframe NS_DESIGNATED_INITIALIZER;

@end
