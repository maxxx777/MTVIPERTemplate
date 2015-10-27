//
//  MTRootWebService.m
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTRootWebService.h"
#import "MTRootWebServiceParser.h"

@interface MTRootWebService ()

@property (nonatomic, strong) id<MTRootWebServiceParserInterface>parser;

@end

@implementation MTRootWebService

- (void)dealloc
{
    DLog(@"%@ deallocated: %p", NSStringFromClass([self class]), self);
}

- (instancetype)initWithParser:(id<MTRootWebServiceParserInterface>)parser
{
    self = [super init];
    if (self) {
        
        _parser = parser;
        
    }
    return self;
}

- (instancetype)init
{
    MTRootWebServiceParser *parser = [[MTRootWebServiceParser alloc] init];
    return [self initWithParser:parser];
}

@end
