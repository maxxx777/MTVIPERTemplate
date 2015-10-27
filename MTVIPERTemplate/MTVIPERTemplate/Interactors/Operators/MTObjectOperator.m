//
//  MTObjectOperator.m
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 08.10.15.
//  Copyright (c) 2015 Egar Technology Inc. All rights reserved.
//

#import "MTObjectOperator.h"
#import "MTItemListCacheInterface.h"
#import "MTObjectDataManagerInterface.h"

@interface MTObjectOperator ()

@property (nonatomic, strong) id<MTItemListCacheInterface>itemListCache;
@property (nonatomic, strong) id<MTObjectDataManagerInterface>objectDataManager;

@end

@implementation MTObjectOperator

- (instancetype)initWithItemListCache:(id<MTItemListCacheInterface>)itemListCache
                    objectDataManager:(id<MTObjectDataManagerInterface>)objectDataManager
{
    self = [super init];
    if (self) {
        
        _itemListCache = itemListCache;
        _objectDataManager = objectDataManager;
        
    }
    return self;
}

@end
