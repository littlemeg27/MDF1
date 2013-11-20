//
//  CustomObject.m
//  MDF1Project3
//
//  Created by Brenna Pavlinchak on 11/13/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "CustomObject.h"

@implementation CustomObject

@synthesize nameOfBusiness, descriptionOfBusiness, longitudeOfBusiness, latitudeOfBusiness;

-(id)initWithNameName:(NSString*)name description:(NSString*)description longitude:(float)longitude latitude:(float)latitude
{
    if((self = [super init]))
    {
        nameOfBusiness = [name copy];
        descriptionOfBusiness = [description copy];
        longitudeOfBusiness = longitude;
        latitudeOfBusiness = latitude;
    }
    return self;
}


@end
