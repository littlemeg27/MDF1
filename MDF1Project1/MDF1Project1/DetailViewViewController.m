//
//  DetailViewViewController.m
//  MDF1Project1
//
//  Created by Brenna Pavlinchak on 11/4/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "DetailViewViewController.h"

@interface DetailViewViewController ()

@end

@implementation DetailViewViewController

@synthesize name;
@synthesize team;

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

-(void)updateUILabel
{
    nameLabel.text = name;
    teamLabel.text = team;
}

@end
