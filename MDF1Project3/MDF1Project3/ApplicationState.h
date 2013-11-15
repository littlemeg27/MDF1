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
    NSMutableArray *businessArray;
}

+(ApplicationState*)sharedApplicationState;

@end
