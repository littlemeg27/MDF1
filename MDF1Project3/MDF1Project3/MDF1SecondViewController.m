//
//  MDF1SecondViewController.m
//  MDF1Project3
//
//  Created by Brenna Pavlinchak on 11/13/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "MDF1SecondViewController.h"
#import "ApplicationState.h"
#import "MyMapAnnotation.h"
#import "CustomObject.h"


@interface MDF1SecondViewController ()

@end

@implementation MDF1SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    MKCoordinateSpan span; //The zoom level of the map
    span.latitudeDelta = 5.0;
    span.longitudeDelta = 5.0;
    
    CLLocationCoordinate2D location; //The location of the map
    location.latitude = 35.227087;
    location.longitude = -80.843127;
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    mapView.region = region;
    
    //self.mapView. = self;
    
    ApplicationState *theAppState = [ApplicationState sharedApplicationState];
    theAppState.businessArray;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
