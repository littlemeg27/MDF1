//
//  CustomObject.h
//  MDF1Project3
//
//  Created by Brenna Pavlinchak on 11/13/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomObject : NSObject
{
    NSString *nameOfBusiness;
    NSString *descriptionOfBusiness;
    float longitudeOfBusiness;
    float latitudeOfBusiness;
}

-(id)initWithNameName:(NSString*)name description:(NSString*)description longitude:(float)longitude latitude:(float)latitude;

@property (nonatomic, strong)NSString *nameOfBusiness;
@property (nonatomic, strong)NSString *descriptionOfBusiness;
@property (nonatomic, assign)float longitudeOfBusiness;
@property (nonatomic, assign)float latitudeOfBusiness;

@end
