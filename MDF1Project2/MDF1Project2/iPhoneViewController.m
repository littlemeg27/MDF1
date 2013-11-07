//
//  iPhoneViewController.m
//  MDF1Project2
//
//  Created by Brenna Pavlinchak on 11/6/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "iPhoneViewController.h"
#import "iPadViewController.h"

@interface iPhoneViewController ()

@end

@implementation iPhoneViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    self.title = @"iPhone"; //Title of the app
    [super viewWillAppear:animated];
}

-(IBAction)onClick:(id)sender //Button to pop you into the next page 
{
    iPadViewController *iPadView = [[iPadViewController alloc] initWithNibName:@"iPadView" bundle:nil];
    
    if(iPadView !=nil)
    {
        [self.navigationController pushViewController:iPadView animated:TRUE]; //Makes the move to the iPad view
    }
}

-(IBAction)backButton:(id)sender //Go back a page button
{
    [self.navigationController popViewControllerAnimated:TRUE];
}






@end
