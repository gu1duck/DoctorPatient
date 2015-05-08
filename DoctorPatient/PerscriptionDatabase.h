//
//  PerscriptionDatabase.h
//  DoctorPatient
//
//  Created by Jeremy Petter on 2015-05-07.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PerscriptionDatabase : NSObject

-(NSString *) perscriptionForSymptom:(NSString *) symptom;
-(void) storePerscription: (NSString *) perscription forPatient: (NSString *) patient;


@end
