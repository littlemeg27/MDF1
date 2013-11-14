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
    NSInteger *longitudeOfBusiness;
    NSInteger *latitudeOfBusiness;
}

-(id)initWithNameName:(NSString*)name description:(NSString*)description longitude:(NSInteger*)longitude latitude:(NSInteger*)latitude;

@property (nonatomic, strong)NSString *nameOfBusiness;
@property (nonatomic, strong)NSString *descriptionOfBusiness;
@property (nonatomic, assign)NSInteger *longitudeOfBusiness;
@property (nonatomic, assign)NSInteger *latitudeOfBusiness;

@end
