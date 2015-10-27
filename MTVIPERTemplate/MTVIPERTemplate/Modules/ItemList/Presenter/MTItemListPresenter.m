//
//  MTItemListPresenter.m
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTItemListPresenter.h"
#import "MTItemListViewInterface.h"
#import "MTItemListWireframe.h"

@interface MTItemListPresenter ()

@property (nonatomic, strong) id<MTObjectListRequesterInputInterface>objectListRequester;
@property (nonatomic, weak) MTItemListWireframe *wireframe;

@end

@implementation MTItemListPresenter

- (instancetype)initWithObjectListRequester:(id<MTObjectListRequesterInputInterface>)objectListRequester
                                  wireframe:(MTItemListWireframe *)wireframe
{
    self = [super init];
    if (self) {
        
        _objectListRequester = objectListRequester;
        _wireframe = wireframe;
     
    }
    return self;
}

- (UIViewController<MTItemListViewInterface> *)userInterface
{
    NSAssert(_userInterface != nil, @"userInterface is equal to nil");
    return _userInterface;
}

@end
