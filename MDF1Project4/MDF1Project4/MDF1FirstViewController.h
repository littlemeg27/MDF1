//
//  MDF1FirstViewController.h
//  MDF1Project4
//
//  Created by Brenna Pavlinchak on 11/21/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MDF1FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, NSURLConnectionDataDelegate>
{
    BOOL editMode;
    IBOutlet UIButton *editButton;
    IBOutlet UITableView *tableView;
    NSURLRequest *requestTheXML;
    NSURL *xmlURL;
    NSURLConnection *connection;
    NSMutableData *requestTheData;
}

@end
