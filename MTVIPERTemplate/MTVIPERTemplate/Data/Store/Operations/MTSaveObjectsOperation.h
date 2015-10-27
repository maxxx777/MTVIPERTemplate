//
//  MTSaveObjectsOperation.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTRootOperation.h"

@protocol MTMergeObjectsOperationDelegate;

@interface MTSaveObjectsOperation : MTRootOperation

- (instancetype _Nonnull) __unavailable init;
- (instancetype _Nonnull)initWithObjects:(NSArray * _Nonnull)objects
                                delegate:(id<MTMergeObjectsOperationDelegate> _Nullable)delegate NS_DESIGNATED_INITIALIZER;

@end
