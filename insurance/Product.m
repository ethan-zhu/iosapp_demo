//
//  Product.m
//  insurance
//
//  Created by tony on 05/02/2018.
//  Copyright © 2018 tony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Product()


@end

@implementation Product

- (id)initObject:(NSString*)name place:(NSString*)place money:(NSInteger)money {
    self.name = name;
    self.place = place;
    self.money = money;
    return self;
}

@end

