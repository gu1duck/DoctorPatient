//
//  PerscriptionDatabase.m
//  DoctorPatient
//
//  Created by Jeremy Petter on 2015-05-07.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import "PerscriptionDatabase.h"

@implementation PerscriptionDatabase{
    NSDictionary* _perscriptionsBySymptom;
    NSMutableDictionary* _perscriptionsByPatient;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _perscriptionsByPatient = [[NSMutableDictionary alloc]init];
        _perscriptionsBySymptom = @{@"giant feet": @"punch to the face", @"missing head": @"kick to the shins", @"dead cat": @"hug"};
    }
    return self;
}
-(NSString *) perscriptionForSymptom:(NSString *) symptom{
    return _perscriptionsBySymptom[symptom];
}

-(void) storePerscription: (NSString *) perscription forPatient: (NSString *) patient{
    [_perscriptionsByPatient setObject:perscription forKey:patient];
    NSLog(@"The Internet: Perscription, %@, assigned to %@", _perscriptionsByPatient[patient], patient);
    
}

@end
