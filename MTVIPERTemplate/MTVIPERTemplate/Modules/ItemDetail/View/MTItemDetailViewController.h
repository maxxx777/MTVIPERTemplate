//
//  MTItemDetailViewController.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 10.10.15.
//  Copyright © 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTRootTableViewController.h"
#import "MTItemDetailViewInterface.h"
#import "MTItemDetailPresenterInterface.h"

@interface MTItemDetailViewController : MTRootTableViewController
<
    MTItemDetailViewInterface
>

@property (nonatomic, strong, nonnull) id<MTItemDetailPresenterInterface> presenter;

@end
