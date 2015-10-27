//
//  MTObjectDetailFetcher.m
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 10.10.15.
//  Copyright © 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTObjectDetailFetcher.h"
#import "MTMappedObject.h"
#import "MTObjectDataManagerInterface.h"

@interface MTObjectDetailFetcher ()

@property (nonatomic, strong) MTMappedObject *object;
@property (nonatomic, strong) id<MTItemDataManagerInterface>itemDataManager;

@end

@implementation MTObjectDetailFetcher

- (instancetype)initWithObject:(MTMappedObject *)object
               itemDataManager:(id<MTItemDataManagerInterface>)itemDataManager
{
    self = [super init];
    if (self) {
        
        _object = object;
        _itemDataManager = itemDataManager;
        
    }
    return self;
}

@end
