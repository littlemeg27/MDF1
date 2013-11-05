//
//  MDF1ViewController.m
//  MDF1Project1
//
//  Created by Brenna Pavlinchak on 10/3/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "MDF1ViewController.h"
#import "CustomTableCell.h"
#import "DetailViewViewController.h"

@interface MDF1ViewController ()

@end

@implementation MDF1ViewController

- (void)viewDidLoad
{
    stringArray1 = [[NSMutableArray alloc] initWithObjects:@"Catherine Ochoa", @"Kris Thomas", @"Brandon Roush", @"Caroline Glaser", @"Cáthia", @"Michelle Chamuel", @"Patrick Dodd", @"Sasha Allen", @"Jermaine Paul", @"Amanda Brown", @"Nicholas David", @"De'Borah Garner", @"Mackenzie Bourg", @"Terry McDermott", @"Tony Lucca", @"Jamar Rogers", @"Juliet Simms", @"Lindsey Pavao", @"Erin Wilett", nil];
    
    stringArray2 = [[NSMutableArray alloc] initWithObjects:@"Team Shakira", @"Team Shakira", @"Team Adam", @"Team Adam", @"Team Usher", @"Team Usher", @"Team Adam", @"Team Shakira", @"Team Blake", @"Team Adam", @"Team Blake", @"Team Xtina", @"Team Blake", @"Team Blake", @"Team Adam", @"Team CeeLo", @"Team CeeLo", @"Team Xtina", @"Team Blake", nil];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*if(editingStyle == UITableViewCellEditingStyleDelete) //Removes an item from the list
    {
        [stringArray1 removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:TRUE];
    }
    else if(editingStyle == UITableViewCellEditingStyleInsert) //Adds an item to the list
    {
        [stringArray1 insertObject:@"Test" atIndex: indexPath.row];
        
        [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:TRUE];
    }*/
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section //Creates table view
{
    return [stringArray1 count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath //Adds values to each row
{
    static NSString  *cellIdentity = @"Cell";
    
    CustomTableCell *cellRow  = [tableView dequeueReusableCellWithIdentifier: cellIdentity];
    
    
    if(cellRow == nil)
    {
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        
        for(UIView *view in views)
        {    
            if([view isKindOfClass:[CustomTableCell class]])
            {
                cellRow = (CustomTableCell*)view;
                
                cellRow.nameLabel.text = [stringArray1 objectAtIndex:indexPath.row];
                
                cellRow.teamLabel.text = [stringArray2 objectAtIndex:indexPath.row];
            }
        }
    }

    return cellRow;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    DetailViewViewController *detailView = [[DetailViewViewController alloc] initWithNibName:@"DetailView" bundle:nil]; //Pop to the detail page
    
    if(detailView !=nil) 
    {
        detailView.name = [stringArray1 objectAtIndex:indexPath.row]; //Show the 
        detailView.team = [stringArray2 objectAtIndex:indexPath.row];
        [self presentViewController:detailView animated:YES completion:nil];
        [detailView updateUILabel];
    }
}

-(IBAction)editButton:(id)sender
{
    [tableView setEditing:TRUE];    
}

-(CGFloat)tableView:(UITableViewCell *)sender heightForRowAtIndexPath:(NSIndexPath *)indexPath; //Changes the height of the cells to the right size. 
{
    return tableView.rowHeight * 2;
}

@end
