//
//  BRBarometerReading.m
//  Barometer
//
//  Created by Ryan Coughlin on 9/22/14.
//  Copyright (c) 2014 Ryan Coughlin. All rights reserved.
//

#import "BRBarometerReading.h"

static const double kpaToInHG = 0.296133971008484;

@implementation BRBarometerReading

- (instancetype)initWithPressure:(NSNumber *)airPressureNumber currentDate:(NSDate *)date
{
    self = [super init];

    if(self == nil) {
        return nil;
    }
    
    _date = date;
    _pressure = [self convertKPAToInHGWithNumber:airPressureNumber];
    
    return self;
}

- (NSNumber *)convertKPAToInHGWithNumber:(NSNumber *)numberPressure
{
    return [NSNumber numberWithDouble:([numberPressure doubleValue] * kpaToInHG)];
}

@end
