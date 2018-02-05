//
//  User.h
//  good
//
//  Created by tony on 01/02/2018.
//  Copyright © 2018 tony. All rights reserved.
//


@interface User : NSObject


@property(strong, nonatomic) NSString *username;
@property(strong, nonatomic) NSString *password;
@property(nonatomic) NSInteger balance;

- (id)initObject:(NSString*)username pass:(NSString*)password bala:(NSInteger)balance;
@end

