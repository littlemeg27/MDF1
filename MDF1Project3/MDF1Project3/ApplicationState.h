//
//  ApplicationState.h
//  MDF1Project3
//
//  Created by Brenna Pavlinchak on 11/13/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ApplicationState : NSObject
{
    NSInteger something;
}

+(ApplicationState*)sharedApplicationState;

@property (nonatomic, assign)NSInteger something;
@end
