//
//  User.m
//  good
//
//  Created by tony on 01/02/2018.
//  Copyright © 2018 tony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface User()


@end

@implementation User

- (id)initObject:(NSString*)username pass:(NSString*)password bala:(NSInteger)balance {
    self.username = username;
    self.password = password;
    self.balance = balance;
    return self;
}

@end

