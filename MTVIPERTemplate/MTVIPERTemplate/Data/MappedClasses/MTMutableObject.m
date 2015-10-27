//
//  MTMutableObject.m
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 11.10.15.
//  Copyright © 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTMutableObject.h"
#import "NSNumber+MTRandomValue.h"

@implementation MTMutableObject
@dynamic itemName;
@dynamic objectDescription;

- (instancetype)initWithObject:(MTMappedObject *)object_
{
    self = [super initWithItemId:object_.itemId
                        itemName:object_.itemName
               objectDescription:object_.objectDescription];
    if (self) {
        self.itemName = object_.itemName;
        self.objectDescription = object_.objectDescription;
    }
    return self;
}

- (instancetype)initWithItemId:(NSNumber *)itemId_
                      itemName:(NSString *)itemName_
             objectDescription:(NSString *)objectDescription_
{
    return [self initWithObject:nil];
}

- (instancetype)init
{
    NSNumber *newItemId = [NSNumber mt_randomUnsignedLong];
    MTMappedObject *mappedObject = [[MTMappedObject alloc] initWithItemId:newItemId
                                                                 itemName:nil
                                                        objectDescription:nil];
    return [self initWithObject:mappedObject];
}

- (void)setItemName:(NSString *)itemName
{
    _itemName = [itemName mutableCopy];
}

- (void)setObjectDescription:(NSString *)objectDescription
{
    _objectDescription = [objectDescription copy];
}

@end
