//
//  MTObjectDetailConfigurator.m
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 11.10.15.
//  Copyright © 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTObjectDetailConfigurator.h"
#import "MTMutableObject.h"

@interface MTObjectDetailConfigurator ()

@property (nonatomic, strong) MTMutableObject *object;

@end

@implementation MTObjectDetailConfigurator

- (instancetype)initWithNewItem
{
    self = [super init];
    if (self) {
    
        _object = [[MTMutableObject alloc] init];
        
    }
    return self;
}

@end
