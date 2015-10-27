//
//  MTItemListWireframe.m
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTItemListWireframe.h"
#import "MTItemListViewController.h"

@interface MTItemListWireframe ()

@property (nonatomic, weak) MTItemListViewController *viewController;

@end

@implementation MTItemListWireframe

#pragma mark - MTItemListModuleInterface

- (void)showItemListViewInWindow:(UIWindow *)window
{
    //init
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Base" bundle: nil];
    _viewController = [storyboard instantiateViewControllerWithIdentifier:@"ItemListViewController"];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    
    //configure
    
    //navigate
    window.rootViewController = navigationController;
}

@end
