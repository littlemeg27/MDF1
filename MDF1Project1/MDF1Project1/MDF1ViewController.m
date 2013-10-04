//
//  MDF1ViewController.m
//  MDF1Project1
//
//  Created by Brenna Pavlinchak on 10/3/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "MDF1ViewController.h"
#import "CustomTableCell.h"

@interface MDF1ViewController ()

@end

@implementation MDF1ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    stringArray1 = [[NSArray alloc] initWithObjects:@"Catherine Ochoa", @"Kris Thomas", @"Brandon Roush", @"Caroline Glaser", @"Cáthia", @"Michelle Chamuel", @"Patrick Dodd", @"Sasha Allen", @"Jermaine Paul", @"Amanda Brown", @"Nicholas David", @"De'Borah Garner", @"Mackenzie Bourg", @"Terry McDermott", @"Tony Lucca", @"Jamar Rogers", @"Juliet Simms", @"Lindsey Pavao", @"Erin Wilett", nil];
    
    stringArray2 = [[NSMutableArray alloc] initWithObjects:@"Team Shakira", @"Team Shakira", @"Team Adam", @"Team Adam", @"Team Usher", @"Team Usher", @"Team Adam", @"Team Shakira", @"Team Blake", @"Team Adam", @"Team Blake", @"Team Xtina", @"Team Blake", @"Team Blake", @"Team Adam", @"Team CeeLo", @"Team CeeLo", @"Team Xtina", @"Team Blake", nil];

    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section //Creates table view
{
    return [stringArray1 count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath //Adds values to each row
{
    static NSString  *cellIdentity = @"Cell";
    
    UITableViewCell *cellRow  = [tableView dequeueReusableCellWithIdentifier: cellIdentity];
    
    if(cellRow == nil)
    {
        cellRow = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: cellIdentity];
    }
    
    static int count = 0;
    cellRow.textLabel.text = (NSString*)[stringArray1 objectAtIndex:indexPath.row];
    
    count ++;
    return cellRow;
}
@end
