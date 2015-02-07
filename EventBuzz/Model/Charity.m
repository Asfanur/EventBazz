//
//  Charity.m
//  EventBuzz
//
//  Created by ARMIN on 7/02/2015.
//  Copyright (c) 2015 ARMIN. All rights reserved.
//

#import "Charity.h"

@implementation Charity 
@synthesize charityID = _charityID;
@synthesize name = _name;
@synthesize mission = _mission;
@synthesize percentage = _percentage;

-(id)init {
    return [self initWithName:@"Name" andID:@"ID" andMission:@"Mission"];
}

-(id)initWithName:(NSString *)name andID:(NSString *)charID andMission:(NSString *)mission {
    //Call the superclass's designated initializer
    self = [super init];
    
    //Did the superclass's designated initializer succeed?
    if (self) {
        //Give the instance variables initial values
        [self setCharityID:charID];
        [self setName:name];
        [self setMission:mission];
        [self setPercentage:0.00];
    }
    //Return the address of the newly initialized object
    return self;
}

-(Charity *)copyCharity {
    Charity *newCharity = [[Charity alloc] initWithName:_name andID:_charityID andMission:_mission];
    return newCharity;
}

@end
