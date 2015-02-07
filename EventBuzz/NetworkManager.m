//
//  NetworkManager.m
//  HorizonMyCouncil
//
//  Created by Asfanur Arafin on 4/11/2014.
//  Copyright (c) 2014 Solorient. All rights reserved.
//

#import "NetworkManager.h"

@implementation NetworkManager

+(void)fetchQuery:(NSString *)query withCompletionBlock:(ObjectCompletionBlock)callback {
    // 1
    query = [query stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL *url = [NSURL URLWithString:query];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    // 2
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    operation.responseSerializer = [AFJSONResponseSerializer serializer];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        // 3
        callback(YES,responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        callback(NO,error);
    }];
    
    // 5
    [operation start];
    
}



@end
