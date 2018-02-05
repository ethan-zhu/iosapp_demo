//
//  InsuranceViewController.m
//  insurance
//
//  Created by tony on 05/02/2018.
//  Copyright © 2018 tony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InsuranceViewController.h"
#import "Product.h"
@interface InsuranceViewController ()


@end

@implementation InsuranceViewController
@synthesize product;



- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", self.product.name);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


@end
