//
//  MTSaveObjectsOperation.m
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTSaveObjectsOperation.h"
#import "MTMergeObjectsOperationDelegate.h"
#import "MTDataStore.h"

@interface MTSaveObjectsOperation ()

@property (nonatomic, strong) NSArray *objects;
@property (nonatomic, strong) id<MTMergeObjectsOperationDelegate> delegate;

@end

@implementation MTSaveObjectsOperation

- (instancetype)initWithObjects:(NSArray *)objects
                       delegate:(id<MTMergeObjectsOperationDelegate>)delegate
{
    self = [super init];
    if (self) {
        
        _objects = objects;
        _delegate = delegate;
        
    }
    return self;
}

- (void)main
{
    NSError *error = nil;
    NSManagedObjectContext *context = [MTDataStore sharedStore].privateQueueContext;
    
    BOOL success = NO;
    
    //
    
    if (self.isCancelled) {
        [context rollback];
    } else {
        if (success) {
            [[MTDataStore sharedStore] saveContext:context];
        }
    }
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^
     {
         if ([self.delegate respondsToSelector:@selector(onDidObjectsMergeWithError:isOperationCancelled:)]) {
             [self.delegate onDidObjectsMergeWithError:error
                                  isOperationCancelled:self.isCancelled];
         }
     }];
}

@end
