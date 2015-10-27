//
//  MTItemListFetcher.m
//  VIPERDemoApp
//
//  Created by MAXIM TSVETKOV on 27.08.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTObjectListFetcher.h"
#import "MTItemListCacheInterface.h"
#import "MTDataMappingInterface.h"
#import "MTRootDataManagerInterface.h"

@interface MTObjectListFetcher ()

@property (nonatomic, strong) id<MTItemListCacheInterface>itemListCache;
@property (nonatomic, strong) id<MTDataMappingInterface>dataMapping;
@property (nonatomic, strong) id<MTRootDataManagerInterface>rootDataManager;

@end

@implementation MTObjectListFetcher

- (instancetype)initWithItemListCache:(id<MTItemListCacheInterface>)itemListCache
                          dataMapping:(id<MTDataMappingInterface>)dataMapping
                      rootDataManager:(id<MTRootDataManagerInterface>)rootDataManager
{
    self = [super init];
    if (self) {
        
        _itemListCache = itemListCache;
        _dataMapping = dataMapping;
        _rootDataManager = rootDataManager;
        
    }
    return self;
}

#pragma mark - MTItemListFetcherInputInterface

- (NSUInteger)countOfItems
{
    return [self.itemListCache numberOfAllCachedItems];
}

- (NSUInteger)numberOfSections
{
    return [self.itemListCache numberOfSections];
}

- (NSUInteger)numberOfRowsInSection:(NSInteger)section
{
    return [self.itemListCache numberOfRowsInSection:section];
}

- (NSArray *)allItems
{
    return [self.itemListCache allCachedItems];
}

- (NSArray *)sectionIndexTitles
{
    return [self.itemListCache sectionIndexTitles];
}

- (NSString *)sectionIndexTitleForSectionName:(NSString *)sectionName
{
    return [self.itemListCache sectionIndexTitleForSectionName:sectionName];
}

- (NSString *)titleForHeaderInSection:(NSInteger)section
{
    return [self.itemListCache titleForHeaderInSection:section];
}

- (id)objectAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.rootDataManager mappedObjectAtIndexPath:indexPath
                                           itemListCache:self.itemListCache
                                             dataMapping:self.dataMapping];
}

@end
