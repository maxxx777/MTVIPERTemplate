//
//  MTDataStoreConstants.h
//
//  Created by MAXIM TSVETKOV on 26.08.15.
//

static NSString *const MTDataStoreSQLiteFileName = @"MTVIPERTemplate.sqlite";
static NSString *const MTDataStoreModelFileName = @"MTVIPERTemplate";

static NSString * const MTDataStoreErrorDomain = @"MTDataStore.ErrorDomain";

typedef NS_ENUM(NSUInteger, MTDataStoreErrorType) {
    
    MTDataStoreErrorTypeMergeObject = 100,
    MTDataStoreErrorTypeMergeObjects
};

