//
//  CustomTableCell.h
//  MDF1Project2
//
//  Created by Brenna Pavlinchak on 11/7/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell
{
    IBOutlet UILabel *nameLabel;
}

@property (nonatomic, strong) UILabel* nameLabel;

@end