//
//  MTManagedObject+CoreDataProperties.h
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 27.10.15.
//  Copyright © 2015 MAXIM TSVETKOV. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MTManagedObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface MTManagedObject (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *objectDescription;

@end

NS_ASSUME_NONNULL_END
