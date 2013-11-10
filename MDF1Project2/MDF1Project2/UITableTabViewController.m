//
//  UITableTabViewController.m
//  MDF1Project2
//
//  Created by Brenna Pavlinchak on 11/7/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "UITableTabViewController.h"
#import "DetailViewController.h"

@interface UITableTabViewController ()

@end

@implementation UITableTabViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.title = NSLocalizedString(@"Table", @"Table");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    stringArray1 = [[NSMutableArray alloc] initWithObjects:@"A New Objective-C Runtime: From Research to Production", @"Android in opposition to iPhone", @"Examining Objective-C", @"An introduction to Objective-C", nil]; //First array for tableView
    
    stringArray2 = [[NSMutableArray alloc] initWithObjects:@"http://web.ebscohost.com.oclc.fullsail.edu:81/ehost/detail?vid=6&sid=0713b64f-cc3f-4854-b3d9-7a03220506f7%40sessionmgr10&hid=25&bdata=JnNpdGU9ZWhvc3QtbGl2ZQ%3d%3d#db=a9h&AN=79648568", @"http://web.ebscohost.com.oclc.fullsail.edu:81/ehost/detail?vid=6&sid=0713b64f-cc3f-4854-b3d9-7a03220506f7%40sessionmgr10&hid=25&bdata=JnNpdGU9ZWhvc3QtbGl2ZQ%3d%3d#db=a9h&AN=69620840", @"http://web.ebscohost.com.oclc.fullsail.edu:81/ehost/detail?vid=6&sid=0713b64f-cc3f-4854-b3d9-7a03220506f7%40sessionmgr10&hid=25&bdata=JnNpdGU9ZWhvc3QtbGl2ZQ%3d%3d#db=a9h&AN=19197553", @"http://web.ebscohost.com.oclc.fullsail.edu:81/ehost/detail?vid=7&sid=0713b64f-cc3f-4854-b3d9-7a03220506f7%40sessionmgr10&hid=25&bdata=JnNpdGU9ZWhvc3QtbGl2ZQ%3d%3d#db=a9h&AN=9705306804", nil]; //Second array for tableView

    [super viewDidLoad];
	// Do any additional setup after loading the view.
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
    DetailViewViewController *detailView = [[DetailViewViewController alloc] initWithNibName:@"DetailView" bundle:nil]; //Pop to the detail page
    
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
