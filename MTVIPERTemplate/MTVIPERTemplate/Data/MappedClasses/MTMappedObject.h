//
//  MTMappedObject.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 08.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTMappedItem.h"

@interface MTMappedObject : MTMappedItem <NSMutableCopying>
{
    NSString *_itemName;
    NSString *_objectDescription;
}

@property (nonatomic, strong, readonly) NSString *objectDescription;

- (instancetype) __unavailable initWithItemId: (NSNumber *)itemId_
                                     itemName: (NSString *)itemName_;
- (instancetype)initWithItemId: (NSNumber *)itemId_
                      itemName: (NSString *)itemName_
             objectDescription: (NSString *)objectDescription_ NS_DESIGNATED_INITIALIZER;

@end
