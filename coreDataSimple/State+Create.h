//
//  State+Create.h
//  coreDataSimple
//
//  Created by Kyle Oba on 4/17/14.
//  Copyright (c) 2014 AgencyAgency. All rights reserved.
//

#import "State.h"

@interface State (Create)

+ (State *)createStateWithName:(NSString *)name population:(NSUInteger)population managedObjectContext:(NSManagedObjectContext *)managedObjectContext;
+ (NSArray *)allStatesInManagedObjectContext:(NSManagedObjectContext *)context;

@end
