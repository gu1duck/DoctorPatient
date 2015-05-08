//
//  Patient.m
//  DoctorPatient
//
//  Created by Jeremy Petter on 2015-05-07.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient{
    NSDictionary* _traits;
    NSArray *_symptoms;
}

-(instancetype)initWithName:(NSString *)name andAge: (NSNumber *) age{
    self = [super init];
    if (self){
        self.name = name;
        _traits = @{@"age":age, @"symptom":@"giant feet"};
        
    }
    return self;
}

-(instancetype)initWithName:(NSString *)name andAge: (NSNumber *) age andSSN: (NSNumber *) ssn{
    self = [super init];
    if (self){
        self.name = name;
        _traits = @{@"age":age, @"SSN":ssn, @"symptom":@"missing head"};
        
    }
    return self;
}

-(void)greetDoctor:(Doctor *)doctor{
    NSLog(@"%@: Hello, I'm %@.", self.name , self.name);
}

-(void)giveProperty:(NSString *)property toDoctor:(Doctor*) doctor;{
    id myProperty = _traits[property];
    if (myProperty){
        NSLog(@"%@: My %@ is %@", self.name, property, myProperty);
        [doctor modifyRecordForThisPatient: self WithTrait: myProperty ForName: property];
    } else {
         NSLog(@"%@:I don't know my %@", self.name, property);
    }

}

-(void)visitDoctor: (Doctor *) doctor{
    [doctor greetPatient:self];
    [self greetDoctor:doctor];
    [self requestSpecialtyFromDoctor:doctor];
    [doctor requestProperty: @"age" FromPatient:self];
    [doctor requestProperty: @"SSN" FromPatient:self];
    if ([doctor confirmInfoOfType: @"SSN" forPatient: self]){
        NSLog(@"%@: Your SSN is valid. Becasue this isn't Vancouver I will take you as a patient.\n\n", doctor.name);
    } else {
        NSLog(@"%@: Your SSN is invalid. You need to leave.\n\n", doctor.name);
        [doctor removePatient:self];
    }
}

-(void)requestSpecialtyFromDoctor:(Doctor *) doctor{
    NSLog(@"%@: What's your specialty, %@?", self.name, doctor.name);
    NSLog(@"%@: Its %@.", doctor.name, doctor.specialty);
}

-(void)requestPerscriptionFromDoctor:(Doctor *) doctor{
    NSLog(@"%@: I need some medication for my %@.",self.name, _traits[@"symptom"]);
    [doctor dispenseMedication:self forSymptom: _traits[@"symptom"]];
}
    

@end
