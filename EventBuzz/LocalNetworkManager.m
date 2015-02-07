//
//  LocalNetworkManager.m
//  HorizonMyCouncil
//
//  Created by Asfanur Arafin on 7/11/2014.
//  Copyright (c) 2014 Solorient. All rights reserved.
//

#import "LocalNetworkManager.h"


@implementation LocalNetworkManager

+(void)getAllOrganizationList:(ObjectCompletionBlock)object;
{
    NSString *councilListURl = @"/Horizon/@@horizondev@@/connector/1.0/CouncilNames.json";
    [self fetchQuery:councilListURl
 withCompletionBlock:^(BOOL sucess, id genericObject) {
     if (sucess) {
         object(YES,[[(NSDictionary *)genericObject allValues] lastObject]);

     } else {
         object(NO,nil);
     }
 }];
    
}


@end
