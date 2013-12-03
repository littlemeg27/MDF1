//
//  MDF1ViewController.h
//  MDF1Project1
//
//  Created by Brenna Pavlinchak on 10/3/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MDF1ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *tableView;
    
    NSMutableArray *stringArray1;
    NSMutableArray *stringArray2;
    UIAlertView *editAlert;
    BOOL editMode;
    
    IBOutlet UIButton *editButton;
}

@end
