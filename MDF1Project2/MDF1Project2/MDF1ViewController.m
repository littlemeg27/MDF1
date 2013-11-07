//
//  MDF1ViewController.m
//  MDF1Project2
//
//  Created by Brenna Pavlinchak on 11/6/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "MDF1ViewController.h"

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

@end
