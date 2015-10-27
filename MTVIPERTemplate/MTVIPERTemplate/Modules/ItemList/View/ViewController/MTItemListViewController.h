//
//  MTItemListViewController.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTRootViewController.h"
#import "MTItemListViewInterface.h"
#import "MTItemListPresenterInterface.h"

@interface MTItemListViewController : MTRootViewController
<
    MTItemListViewInterface
>

@property (nonatomic, strong, nonnull) IBOutlet UIView *containerView;
@property (nonatomic, strong, nonnull) UIViewController *childViewController;
@property (nonatomic, strong, nonnull) id<MTItemListPresenterInterface>presenter;

@end
