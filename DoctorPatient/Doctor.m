//
//  Doctor.m
//  DoctorPatient
//
//  Created by Jeremy Petter on 2015-05-07.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor{
    NSMutableDictionary* _myPatients;
}

-(instancetype)initWithName: (NSString *) name andSpecialty: (NSString *) specialty{
    self = [super init];
    if(self){
        self.name = name;
        self.specialty = specialty;
        _myPatients = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(void)greetPatient:(Patient*) patient{
    NSLog(@"%@: Hello, I'm %@. What's your name?", self.name, self.name);
}

-(void)requestProperty:(NSString *) property FromPatient:(Patient *) patient{
    NSLog(@"%@: Can I get your %@, %@?", self.name, property, patient.name);
    [patient giveProperty:property toDoctor:self];
}

-(void)modifyRecordForThisPatient: (Patient*) patient WithTrait: (id) trait ForName: (NSString *) traitName{
    id existingRecord = [_myPatients objectForKey: patient.name];
    if (existingRecord == nil){
        NSMutableDictionary *newPatient = [[NSMutableDictionary alloc] init];
        [_myPatients setObject:newPatient forKey: patient.name];
    }
    NSMutableDictionary* thisPatient = [_myPatients objectForKey: patient.name];
    [thisPatient setObject:trait forKey:traitName];
    NSLog(@"%@", thisPatient);                                                   //DEBUG
}

-(Boolean) confirmInfoOfType: (NSString *) type forPatient: (Patient *) patient{
    NSMutableDictionary *patientRecord = [_myPatients objectForKey:patient.name];
    if ([patientRecord objectForKey:type] != nil){
        return true;
    } else {
        return false;
    }
}

@end
