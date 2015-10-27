//
//  MTItemListFetcher.h
//  VIPERDemoApp
//
//  Created by MAXIM TSVETKOV on 27.08.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTRootInteractor.h"
#import "MTObjectListFetcherIOInterface.h"

@protocol MTItemListCacheInterface;
@protocol MTDataMappingInterface;
@protocol MTRootDataManagerInterface;

@interface MTObjectListFetcher : MTRootInteractor
<
    MTObjectListFetcherInputInterface
>

- (instancetype _Nonnull)initWithItemListCache:(id<MTItemListCacheInterface> _Nonnull)itemListCache
                                   dataMapping:(id<MTDataMappingInterface> _Nonnull)dataMapping
                               rootDataManager:(id<MTRootDataManagerInterface> _Nonnull)rootDataManager NS_DESIGNATED_INITIALIZER;
- (instancetype _Nonnull) __unavailable init;

@end
