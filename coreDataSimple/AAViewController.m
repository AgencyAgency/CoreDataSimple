//
//  AAViewController.m
//  coreDataSimple
//
//  Created by Kyle Oba on 4/17/14.
//  Copyright (c) 2014 AgencyAgency. All rights reserved.
//

#import "AAViewController.h"

@interface AAViewController ()
@property (weak, nonatomic) IBOutlet UITableView *stateTableView;

@end

@implementation AAViewController

- (void)setContext:(NSManagedObjectContext *)context
{
    _context = context;
    NSLog(@"context set!");
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    
//}

@end
