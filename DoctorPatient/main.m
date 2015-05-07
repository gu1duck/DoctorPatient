//
//  main.m
//  DoctorPatient
//
//  Created by Jeremy Petter on 2015-05-07.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *bob = [[Patient alloc] initWithName:@"Bob" andAge:@21];
        
        [bob visitDoctorWithName:@"Doctor Phil" andSpecialty:@"Backs"];
        
        Patient *fred = [[Patient alloc] initWithName:@"Fred" andAge:@35 andSSN:@123456];
        
        [fred visitDoctorWithName:@"Doctor Phil" andSpecialty:@"Backs"];
        
    }
    return 0;
}
