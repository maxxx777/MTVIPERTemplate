//
//  MTItemDetailWireframe.m
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTItemDetailWireframe.h"
#import "MTItemDetailViewController.h"

@interface MTItemDetailWireframe ()

@property (nonatomic, weak) MTItemDetailViewController *viewController;

@end

@implementation MTItemDetailWireframe

#pragma mark - Helper

- (void)configureViewController
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Base" bundle: nil];
    _viewController = [storyboard instantiateViewControllerWithIdentifier:@"ItemDetailViewController"];
}

@end
