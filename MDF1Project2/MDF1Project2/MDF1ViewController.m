//
//  MDF1ViewController.m
//  MDF1Project2
//
//  Created by Brenna Pavlinchak on 11/6/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "MDF1ViewController.h"
#import "iPhoneViewController.h"
#import "iPadViewController.h"
#import "MacViewController.h"

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
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    self.title = @"MDF1 App"; //Title of the app
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    [super viewWillAppear:animated];
}

-(IBAction)onClick:(id)sender
{
    iPhoneViewController *iPhoneView = [[iPhoneViewController alloc] initWithNibName:@"iPhoneView" bundle:nil];
    
    if(iPhoneView !=nil)
    {
        [self.navigationController pushViewController:iPhoneView animated:TRUE]; //Makes the move to the iphone view
    }
}

@end
