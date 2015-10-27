//
//  MTItemListFetcherIOInterface.h
//  VIPERDemoApp
//
//  Created by MAXIM TSVETKOV on 27.08.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

@protocol MTObjectListFetcherInputInterface <NSObject>

@optional

@property (NS_NONATOMIC_IOSONLY, readonly) NSUInteger countOfItems;
@property (NS_NONATOMIC_IOSONLY, readonly) NSUInteger numberOfSections;
- (NSUInteger)numberOfRowsInSection:(NSInteger)section;
@property (NS_NONATOMIC_IOSONLY, readonly, copy) NSArray *allItems;
@property (NS_NONATOMIC_IOSONLY, readonly, copy) NSArray *sectionIndexTitles;
- (NSString *)sectionIndexTitleForSectionName:(NSString *)sectionName;
- (NSString *)titleForHeaderInSection:(NSInteger)section;
- (id)objectAtIndexPath:(NSIndexPath *)indexPath;
- (NSIndexPath *)indexPathForObjectWithItemId:(NSNumber *)itemId;

@end

@protocol MTObjectListFetcherOutputInterface <NSObject>

@end
