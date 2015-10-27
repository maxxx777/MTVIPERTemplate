//
//  MTAppModulesConnector.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//
/*
 This class configure module dependencies and perform first navigation.
*/

#import "MTAppModulesConnector.h"

@interface MTAppModulesConnector ()

@property (nonatomic, strong) UIWindow *window;

@end

@implementation MTAppModulesConnector

- (instancetype)initWithWindow:(UIWindow *)window
{
    self = [super init];
    if (self) {
        
        _window = window;
    
    }
    return self;
}

#pragma mark - MTAppModulesConnectorInterface

- (void)configureDependencies
{
    //
}

- (void)showMainScreen
{
    //
}

@end
