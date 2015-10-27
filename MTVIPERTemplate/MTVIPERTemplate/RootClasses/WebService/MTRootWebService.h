//
//  MTRootWebService.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 07.10.15.
//  Copyright (c) 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTRootWebServiceParserInterface.h"
#import "MTRootServiceConstants.h"

@interface MTRootWebService : NSObject

@property (nonatomic, strong, readonly) id<MTRootWebServiceParserInterface>parser;

- (instancetype)initWithParser:(id<MTRootWebServiceParserInterface>)parser NS_DESIGNATED_INITIALIZER;

@end
