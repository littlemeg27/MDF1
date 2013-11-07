//
//  iPadViewController.m
//  MDF1Project2
//
//  Created by Brenna Pavlinchak on 11/6/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "iPadViewController.h"
#import "MacViewController.h"


@interface iPadViewController ()

@end

@implementation iPadViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
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
    self.title = @"iPad"; //Title of the app
    [super viewWillAppear:animated];
}

-(IBAction)onClick:(id)sender
{
    MacViewController *MacView = [[MacViewController alloc] initWithNibName:@"MacView" bundle:nil];
    
    if(MacView !=nil)
    {
        [self.navigationController pushViewController:MacView animated:TRUE]; //Makes the move to the iphone view
    }
}


@end
