//
//  MTSaveObjectOperation.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 11.10.15.
//  Copyright © 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTRootOperation.h"

@class MTMappedObject;

@protocol MTMergeObjectsOperationDelegate;

@interface MTSaveObjectOperation : MTRootOperation

- (instancetype)initWithObject:(MTMappedObject *)object
        mergeOperationDelegate:(id<MTMergeObjectsOperationDelegate>)delegate NS_DESIGNATED_INITIALIZER;
- (instancetype) __unavailable init;

@end
