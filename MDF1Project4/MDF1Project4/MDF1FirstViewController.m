//
//  MDF1FirstViewController.m
//  MDF1Project4
//
//  Created by Brenna Pavlinchak on 11/21/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "MDF1FirstViewController.h"
#import "DetailView.h"

@interface MDF1FirstViewController ()

@end

@implementation MDF1FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}


-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath //We need this to do the editing of our tableView
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"I want to delete: %d", indexPath.row);
        
        [stringArray1 removeObjectAtIndex:indexPath.row];
        [stringArray2 removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:TRUE];
    }
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section //Creates table view
{
    return [stringArray1 count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath //Adds values to each row
{
    static NSString  *cellIdentity = @"Cell";
    
    UITableViewCell *cellRow  = [tableView dequeueReusableCellWithIdentifier: cellIdentity];
    
    
    if(cellRow == nil)
    {
        cellRow = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: cellIdentity];
    }
    
    cellRow.textLabel.text = [stringArray1 objectAtIndex:indexPath.row]; //Show the name on the table
    
    return cellRow;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    DetailView *detailView = [[DetailView alloc] initWithNibName:@"DetailView" bundle:nil]; //Pop to the detail page
    
    if(detailView !=nil)
    {
        detailView.name = [stringArray1 objectAtIndex:indexPath.row]; //Show the name on the detail page
        detailView.linkName = [stringArray2 objectAtIndex:indexPath.row]; //Show the team on the detail page
        [self presentViewController:detailView animated:YES completion:nil];
        [detailView updateUILabel];
    }
}

-(IBAction)editButton:(id)sender
{
    if(editMode == FALSE) //Ask what type of editing mode
    {
        [tableView setEditing:TRUE];
        [editButton setTitle:@"Finish" forState: UIControlStateNormal];
        editMode = TRUE; //Reset to not be in editing mode
    }
    else
    {
        [tableView setEditing:FALSE];
        [editButton setTitle:@"Edit" forState:UIControlStateNormal];
        editMode = FALSE;
    }
    
}


@end
