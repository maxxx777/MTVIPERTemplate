//
//  MTAppDelegate.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 27.10.15.
//  Copyright © 2015 MAXIM TSVETKOV. All rights reserved.
//

@class MTAppModulesConnector;
@class MTAppSettingsConfigurator;

@interface MTAppDelegate : UIResponder
<
UIApplicationDelegate
>
{
    MTAppModulesConnector *appModulesConnector;
    MTAppSettingsConfigurator *appSettingsConfigurator;
}

@end
