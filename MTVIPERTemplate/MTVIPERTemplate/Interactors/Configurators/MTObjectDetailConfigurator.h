//
//  MTObjectDetailConfigurator.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 11.10.15.
//  Copyright © 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTRootInteractor.h"
#import "MTObjectDetailConfiguratorIOInterface.h"

@interface MTObjectDetailConfigurator : MTRootInteractor
<
    MTObjectDetailConfiguratorInputInterface
>

- (instancetype) __unavailable init;
- (instancetype)initWithNewItem NS_DESIGNATED_INITIALIZER;;

@end
