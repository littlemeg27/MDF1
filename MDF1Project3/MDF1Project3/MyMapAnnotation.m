//
//  MyMapAnnotation.m
//  MDF1Project3
//
//  Created by Brenna Pavlinchak on 11/14/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "MyMapAnnotation.h"

@implementation MyMapAnnotation

@synthesize title, coordinate;

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord
{
    if((self = [super init]))
    {
        title = text;
        coordinate = coord;
    }
    return self;
}

@end
