//
//  UITableTabViewController.h
//  MDF1Project2
//
//  Created by Brenna Pavlinchak on 11/7/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableTabViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *tableView;
    
    NSMutableArray *stringArray1;
    NSMutableArray *stringArray2;
    UIAlertView *editAlert;
    BOOL editMode;
    
    IBOutlet UIButton *editButton;
}

-(void)alertView:(UIAlertView *)alertView;

@end
