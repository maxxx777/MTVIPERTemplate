//
//  MTAppSettingsConfigurator.m
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 11.10.15.
//  Copyright © 2015 MAXIM TSVETKOV. All rights reserved.
//
/*
Initial app settings can be configured here.
*/

#import "MTAppSettingsConfigurator.h"

@interface MTAppSettingsConfigurator ()

@end

@implementation MTAppSettingsConfigurator

- (void)dealloc
{
    DLog(@"%@ deallocated: %p", NSStringFromClass([self class]), self);
}

#pragma mark - MTAppSettingsConfiguratorInterface

- (void)configureSettings
{
    //
}

@end
