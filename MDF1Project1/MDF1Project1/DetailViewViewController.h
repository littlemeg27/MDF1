//
//  DetailViewViewController.h
//  MDF1Project1
//
//  Created by Brenna Pavlinchak on 11/4/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewViewController : UIViewController
{
    IBOutlet UILabel* nameLabel;
    IBOutlet UILabel* teamLabel;
    IBOutlet UIButton* backButton;
}

@property(nonatomic, copy) NSString* name;
@property(nonatomic, copy) NSString* team;

-(void)updateUILabel;
-(IBAction)backButton:(id)sender;

@end
