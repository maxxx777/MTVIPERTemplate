//
//  MTObjectDataManager.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTRootDataManager.h"
#import "MTObjectDataManagerInterface.h"
#import "MTMergeObjectsOperationDelegate.h"

@class MTObjectWebService;

@interface MTObjectDataManager : MTRootDataManager
<
    MTObjectDataManagerInterface,
    MTMergeObjectsOperationDelegate
>

@property (nonatomic, strong) MTObjectWebService * _Nullable objectWebService;

@end
