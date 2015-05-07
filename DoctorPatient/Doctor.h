//
//  Doctor.h
//  DoctorPatient
//
//  Created by Jeremy Petter on 2015-05-07.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* specialty;

-(instancetype)initWithName: (NSString *) name andSpecialty: (NSString *) specialty;
-(void)greetPatient:(Patient*) patient;
-(void)requestProperty:(NSString *) property FromPatient:(Patient *) patient;
-(void)modifyRecordForThisPatient: (Patient*) patient WithTrait: (id) trait ForName: (NSString *) traitName;
-(Boolean) confirmInfoOfType: (NSString *) type forPatient: (Patient *) patient;
@end
