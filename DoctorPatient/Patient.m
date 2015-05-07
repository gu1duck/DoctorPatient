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
        _traits = @{@"age":age};
        _symptoms = @[@"giant  feet", @"no head", @"angry cat"];
        
    }
    return self;
}

-(instancetype)initWithName:(NSString *)name andAge: (NSNumber *) age andSSN: (NSNumber *) ssn{
    self = [super init];
    if (self){
        self.name = name;
        _traits = @{@"age":age, @"SSN":ssn};
        
    }
    return self;
}

-(void)greetDoctor:(Doctor *)doctor{
    NSLog(@"%@: Hello, I'm %@.", self.name , self.name);
}

-(void)giveProperty:(NSString *)property toDoctor:(Doctor*) doctor;{
    id myProperty = [_traits objectForKey:property];
    if (myProperty){
        NSLog(@"%@: My %@ is %@", self.name, property, myProperty);
        [doctor modifyRecordForThisPatient: self WithTrait: myProperty ForName: property];
    } else {
         NSLog(@"%@:I don't know my %@", self.name, property);
    }

}

-(void)visitDoctorWithName: (NSString *) name andSpecialty:(NSString *) specialty{
    Doctor *doctor = [[Doctor alloc] initWithName:name andSpecialty:specialty];
    [doctor greetPatient:self];
    [self greetDoctor:doctor];
    [doctor requestProperty: @"age" FromPatient:self];
    [doctor requestProperty: @"SSN" FromPatient:self];
    if ([doctor confirmInfoOfType: @"SSN" forPatient: self]){
        NSLog(@"Valid SSN");
    } else {
        NSLog(@"Your SSN is invalid. You need to leave");
    }
}

-(void)requestMedication: (Doctor *){
    

@end
