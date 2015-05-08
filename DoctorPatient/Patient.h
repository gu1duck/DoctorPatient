//
//  Patient.h
//  DoctorPatient
//
//  Created by Jeremy Petter on 2015-05-07.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;
@interface Patient : NSObject
@property (strong, nonatomic) NSString *name;

-(instancetype)initWithName:(NSString *)name andAge: (NSNumber *) age;
-(instancetype)initWithName:(NSString *)name andAge: (NSNumber *) age andSSN: (NSNumber *) ssn;
-(void)greetDoctor:(Doctor *)doctor;
-(void)giveProperty:(NSString *)property toDoctor:(Doctor*) doctor;
-(void)visitDoctor: (Doctor *) doctor;
-(void)requestPerscriptionFromDoctor:(Doctor *) doctor;

@end
