//
//  ApplicationState.m
//  MDF1Project3
//
//  Created by Brenna Pavlinchak on 11/13/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "ApplicationState.h"

@implementation ApplicationState

@synthesize something;

static ApplicationState  *_sharedApplicationState = nil;

+(ApplicationState*)sharedApplicationState //We are creating the singleton for the application
{
   @synchronized([ApplicationState class])
    {
        if(!_sharedApplicationState) //Check to see if it is the applicationState so that we can create it for the first time
        {
            _sharedApplicationState = [[self alloc] init];
        }
    
        return _sharedApplicationState;
    }
    
    return nil;
}

+(id)alloc
{
    @synchronized([ApplicationState class])
    {
        NSAssert(_sharedApplicationState == nil, @"You have already created a singleton, you do not need a second one!"); //Checking to see if we had already made a singleton
        _sharedApplicationState = [super alloc];
        return _sharedApplicationState;
    }
    
    return nil;
}

#pragma init/dealloc

-(id)init
{
    if((self = [super init]))
    {
        //Things we need to save for the singleton go in here
        something = 0; 
    }
    
    return self;
}
@end
