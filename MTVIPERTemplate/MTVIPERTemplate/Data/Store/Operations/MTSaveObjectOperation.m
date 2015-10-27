//
//  MTSaveObjectOperation.m
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 11.10.15.
//  Copyright © 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTSaveObjectOperation.h"
#import "MTMappedObject.h"
#import "MTDataStore.h"
#import "MTMergeObjectsOperationDelegate.h"

@interface MTSaveObjectOperation ()

@property (nonatomic, strong) MTMappedObject *object;
@property (nonatomic, weak) id<MTMergeObjectsOperationDelegate> delegate;

@end

@implementation MTSaveObjectOperation

- (instancetype)initWithObject:(MTMappedObject *)object
        mergeOperationDelegate:(id<MTMergeObjectsOperationDelegate>)delegate
{
    if (self = [super init]) {
        
        _object = object;
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
    
    __block BOOL isCancelledOperation = self.isCancelled;
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^
     {
         if ([self.delegate respondsToSelector:@selector(onDidObjectMergeWithError:object:isOperationCancelled:)]) {
             
             [self.delegate onDidObjectMergeWithError:error
                                               object:self.object
                                 isOperationCancelled:isCancelledOperation];
         }
     }];
}

@end
