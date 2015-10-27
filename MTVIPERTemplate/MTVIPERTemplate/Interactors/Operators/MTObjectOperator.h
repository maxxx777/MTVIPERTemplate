//
//  MTObjectOperator.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 08.10.15.
//  Copyright (c) 2015 Egar Technology Inc. All rights reserved.
//

#import "MTRootInteractor.h"
#import "MTObjectOperatorIOInterface.h"

@protocol MTItemListCacheInterface;
@protocol MTObjectDataManagerInterface;

@interface MTObjectOperator : MTRootInteractor
<
    MTObjectOperatorInputInterface
>

- (instancetype _Nonnull)initWithItemListCache:(id<MTItemListCacheInterface> _Nonnull)itemListCache
                    objectDataManager:(id<MTObjectDataManagerInterface> _Nonnull)objectDataManager NS_DESIGNATED_INITIALIZER;
- (instancetype _Nonnull) __unavailable init;

@end
