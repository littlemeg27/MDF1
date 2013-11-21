//
//  MDF1FirstViewController.h
//  MDF1Project3
//
//  Created by Brenna Pavlinchak on 11/13/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MDF1FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *tableView;
    UIAlertView *editAlert;
    BOOL editMode;
    
    IBOutlet UIButton *editButton;
}

-(void)alertView:(UIAlertView *)alertView;

@end
