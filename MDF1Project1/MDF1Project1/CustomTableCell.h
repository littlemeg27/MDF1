//
//  CustomTableCell.h
//  MDF1Project1
//
//  Created by Brenna Pavlinchak on 10/3/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell
{
    IBOutlet UILabel *nameLabel;
    IBOutlet UILabel *teamLabel;
}

@property (nonatomic, strong) UILabel* nameLabel;
@property (nonatomic, strong) UILabel* teamLabel;
@end
