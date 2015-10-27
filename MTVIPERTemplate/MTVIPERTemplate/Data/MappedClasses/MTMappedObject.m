//
//  MTMappedObject.m
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 08.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTMappedObject.h"
#import "MTMutableObject.h"

@interface MTMappedObject ()

@end

@implementation MTMappedObject
@synthesize itemName = _itemName;
@synthesize objectDescription = _objectDescription;

- (instancetype)initWithItemId:(NSNumber *)itemId_
                      itemName:(NSString *)itemName_
             objectDescription:(NSString *)objectDescription_
{
    self = [super initWithItemId:itemId_
                        itemName:itemName_];
    if (self) {
        
        _itemName = itemName_;
        _objectDescription = objectDescription_;
        
    }
    return self;
}

- (instancetype)initWithItemId:(NSNumber *)itemId_
                      itemName:(NSString *)itemName_
{
    return [self initWithItemId:itemId_
                       itemName:itemName_
              objectDescription:nil];
}

- (id)mutableCopyWithZone:(NSZone *)zone
{
    return [[MTMutableObject allocWithZone:zone] initWithItemId:self.itemId
                                                       itemName:self.itemName
                                              objectDescription:self.objectDescription];
}

@end
