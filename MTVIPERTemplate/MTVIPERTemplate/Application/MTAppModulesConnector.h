//
//  MTAppModulesConnector.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTAppModulesConnectorInterface.h"

@interface MTAppModulesConnector : NSObject
<
    MTAppModulesConnectorInterface
>

- (instancetype _Nonnull) __unavailable init;
- (instancetype _Nonnull)initWithWindow:(UIWindow * _Nonnull)window NS_DESIGNATED_INITIALIZER;

@end
