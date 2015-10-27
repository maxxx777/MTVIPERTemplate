//
//  MTMutableObject.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 11.10.15.
//  Copyright © 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTMappedObject.h"

@interface MTMutableObject : MTMappedObject

@property (nonatomic, strong) NSString *itemName;
@property (nonatomic, strong) NSString *objectDescription;

- (instancetype)initWithObject:(MTMappedObject *)object_ NS_DESIGNATED_INITIALIZER;

@end
