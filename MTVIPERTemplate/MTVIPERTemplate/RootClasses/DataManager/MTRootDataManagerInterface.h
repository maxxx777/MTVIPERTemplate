//
//  MTRootDataManagerInterface.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTRootDataManagerCompletionHandlingConstants.h"

@protocol MTItemListCacheInterface;
@protocol MTDataMappingInterface;

@protocol MTRootDataManagerInterface <NSObject>

@optional

- (id)mappedObjectAtIndexPath:(NSIndexPath *)indexPath
                itemListCache:(id<MTItemListCacheInterface>)itemListCache
                  dataMapping:(id<MTDataMappingInterface>)dataMapping;

@end
