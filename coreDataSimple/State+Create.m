//
//  State+Create.m
//  coreDataSimple
//
//  Created by Kyle Oba on 4/17/14.
//  Copyright (c) 2014 AgencyAgency. All rights reserved.
//

#import "State+Create.h"

@implementation State (Create)

+ (State *)createStateWithName:(NSString *)name population:(NSUInteger)population managedObjectContext:(NSManagedObjectContext *)managedObjectContext
{
    State *state = nil;
    if ([name length]) {
        NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"State"];
        request.predicate = [NSPredicate predicateWithFormat:@"name = %@", name];
        
        NSError *error;
        NSArray *matches = [managedObjectContext executeFetchRequest:request error:&error];
        
        if (!matches || ([matches count] > 1)) {
            // handle error
            NSAssert(NO, @"wrong number of period matches returned.");
            
        } else if ([matches count] == 0) {
            NSLog(@"Creating new State: %@", name);
            state = [NSEntityDescription insertNewObjectForEntityForName:@"State"
                                                   inManagedObjectContext:managedObjectContext];
            state.name = name;
            state.population = @(population);
        } else {
            state = [matches lastObject];
        }
    }
    return state;
}

+ (NSArray *)allStatesInManagedObjectContext:(NSManagedObjectContext *)context
{
    NSArray *states = nil;
    
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"State"];
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES]];
    
    NSError *error;
    NSArray *matches = [context executeFetchRequest:request error:&error];
    
    if (!matches || ([matches count] < 1)) {
        // handle error
        NSAssert(NO, @"wrong number of school day matches returned.");
        
    } else {
        NSLog(@"states loaded: %lu", (unsigned long)[matches count]);
        states = matches;
    }
    
    return states;
}

@end
