//
//  State.h
//  coreDataSimple
//
//  Created by Kyle Oba on 4/17/14.
//  Copyright (c) 2014 AgencyAgency. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface State : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * population;

@end
