//
//  Charity.h
//  EventBuzzx
//
//  Created by ARMIN on 7/02/2015.
//  Copyright (c) 2015 ARMIN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Charity : NSObject

@property (nonatomic, strong) NSString *charityID;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *mission;
@property (nonatomic) float percentage;

- (id)initWithName:(NSString *)name andID:(NSString *)charID andMission:(NSString *)mission;


- (Charity *)copyCharity;
@end
