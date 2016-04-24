//
//  Nota+CoreDataProperties.h
//  Test Core Data
//
//  Created by Ricardo Champa on 24/04/16.
//  Copyright © 2016 Clickmobile. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Nota.h"

NS_ASSUME_NONNULL_BEGIN

@interface Nota (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *mensaje;
@property (nullable, nonatomic, retain) NSString *titulo;

@end

NS_ASSUME_NONNULL_END
