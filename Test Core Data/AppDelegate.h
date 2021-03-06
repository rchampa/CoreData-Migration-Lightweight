//
//  AppDelegate.h
//  Test Core Data
//
//  Created by Ricardo Champa on 23/04/16.
//  Copyright © 2016 Clickmobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (retain) id delegate;
@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;


+(AppDelegate*) instance;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;
+(NSArray*) getNotas;
+(void) deleteAllObjects:(NSString *) entityDescription;

@end

