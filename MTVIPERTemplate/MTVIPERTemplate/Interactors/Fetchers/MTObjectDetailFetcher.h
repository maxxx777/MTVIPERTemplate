//
//  MTObjectDetailFetcher.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 10.10.15.
//  Copyright © 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTRootInteractor.h"
#import "MTObjectDetailFetcherIOInterface.h"

@class MTMappedObject;

@protocol MTItemDataManagerInterface;

@interface MTObjectDetailFetcher : MTRootInteractor
<
    MTObjectDetailFetcherInputInterface
>

- (instancetype _Nonnull) __unavailable init;
- (instancetype _Nonnull)initWithObject:(MTMappedObject * _Nonnull)object
                        itemDataManager:(id<MTItemDataManagerInterface> _Nonnull)itemDataManager NS_DESIGNATED_INITIALIZER;

@end
