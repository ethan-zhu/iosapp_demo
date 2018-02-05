//
//  Product.h
//  insurance
//
//  Created by tony on 05/02/2018.
//  Copyright © 2018 tony. All rights reserved.
//

@interface Product : NSObject


@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSString *place;
@property(nonatomic, assign) NSInteger money;

- (id)initObject:(NSString*)name place:(NSString*)place money:(NSInteger)money;
@end

