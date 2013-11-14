//
//  MDF1FirstViewController.m
//  MDF1Project3
//
//  Created by Brenna Pavlinchak on 11/13/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "MDF1FirstViewController.h"
#import "ApplicationState.h"
#import "MDF1SecondViewController.h"

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
    /*ApplicationState *theAppState = [ApplicationState sharedApplicationState];
    
    if(theAppState != nil)
      {     //Not sure how i need to use yet but wanted to have code.
          theAppState.something = 0;
      }*/
    
    //CustomObject *business1 = [[CustomObject alloc] initWithNameName:@"Best Buy Pineville" description:@"Electronics store" longitude:-80.892296 latitude:35.083201];
    //CustomObject *business2 = [[CustomObject alloc] initWithNameName:@"Pat-a-cakes Bakery" description:@"Speciality Cupcake Bakery" longitude:-81.042837 latitude:34.951758];
    //CustomObject *business3 = [[CustomObject alloc] initWithNameName:@"BreadSmith" description:@"Bread Bakery" longitude:-80.978080 latitude:35.037729];
    //CustomObject *business4 = [[CustomObject alloc] initWithNameName:@"Carowinds" description:@"Amusement Park" longitude:-80.943768 latitude:35.103234];
    //CustomObject *business5 = [[CustomObject alloc] initWithNameName:@"Concord Mills" description:@"Mile round mall" longitude:-80.721188 latitude:35.368479];
    //CustomObject *business6 = [[CustomObject alloc] initWithNameName:@"South Park" description:@"High-end Mall" longitude:-80.831755 latitude:35.153939];
    //CustomObject *business7 = [[CustomObject alloc] initWithNameName:@"Nothing But Noodles" description:@"Epic Noodle Place" longitude:-80.813800 latitude:35.059113];
    //CustomObject *business8 = [[CustomObject alloc] initWithNameName:@"Winthrop University" description:@"Local University" longitude:-81.028634 latitude:34.938513];
    //CustomObject *business9 = [[CustomObject alloc] initWithNameName:@"Orange Leaf" description:@"Frozen Yorgart" longitude:-81.042534 latitude: 34.958799];
    //CustomObject *business10 = [[CustomObject alloc] initWithNameName:@"Books-A-Million" description:@"Only Bookstore in Rock Hill" longitude:-80.979465 latitude:34.941647];
    
    
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
        
        //Replace with object
        //[stringArray1 removeObjectAtIndex:indexPath.row];
        //[stringArray2 removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:TRUE];
    }
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section //Creates table view
{
    //return [stringArray1 count];
            //Replace with object
}

-(UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath //Adds values to each row
{
    static NSString  *cellIdentity = @"Cell";
    
    UITableViewCell *cellRow  = [tableView dequeueReusableCellWithIdentifier: cellIdentity];
    
    
    if(cellRow == nil)
    {
        cellRow = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: cellIdentity];
    }
    
    //cellRow.textLabel.text = [stringArray1 objectAtIndex:indexPath.row]; //Show the name on the table
    //Insert use of object here
    
    return cellRow;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    MDF1SecondViewController *mapView = [[MDF1SecondViewController alloc] initWithNibName:@"MDF1SecondViewController" bundle:nil]; //Pop to the map page
    
    if(mapView !=nil)
    {
        //Add things it does right here when going into the second tab
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
