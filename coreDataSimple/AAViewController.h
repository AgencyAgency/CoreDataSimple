//
//  AAViewController.h
//  coreDataSimple
//
//  Created by Kyle Oba on 4/17/14.
//  Copyright (c) 2014 AgencyAgency. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AAViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSManagedObjectContext *context;

@end
