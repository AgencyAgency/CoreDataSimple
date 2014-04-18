//
//  AAViewController.m
//  coreDataSimple
//
//  Created by Kyle Oba on 4/17/14.
//  Copyright (c) 2014 AgencyAgency. All rights reserved.
//

#import "AAViewController.h"
#import "State+Create.h"

@interface AAViewController ()
@property (weak, nonatomic) IBOutlet UITableView *stateTableView;
@property (nonatomic, strong) NSArray *states;
@end

@implementation AAViewController

- (void)setContext:(NSManagedObjectContext *)context
{
    _context = context;
    NSLog(@"context set!");
    self.states = [State allStatesInManagedObjectContext:self.context];
    [self.stateTableView reloadData];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"State Cell" forIndexPath:indexPath];
    State *state = (State *)self.states[indexPath.row];
    NSLog(@"%@", state);
    cell.textLabel.text = [[state name] description];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Pop: %i", [state.population intValue]];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.states count];
}

@end
