//
//  NetworkManager.h
//  HorizonMyCouncil
//
//  Created by Asfanur Arafin on 4/11/2014.
//  Copyright (c) 2014 Solorient. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>
typedef void (^ObjectCompletionBlock) (BOOL sucess, id genericObject);

@interface NetworkManager : NSObject
+(void)fetchQuery:(NSString *)query withCompletionBlock:(ObjectCompletionBlock)callback;
@end
