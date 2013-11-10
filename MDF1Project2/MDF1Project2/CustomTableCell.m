//
//  CustomTableCell.m
//  MDF1Project2
//
//  Created by Brenna Pavlinchak on 11/7/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "CustomTableCell.h"

@implementation CustomTableCell

@synthesize nameLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
