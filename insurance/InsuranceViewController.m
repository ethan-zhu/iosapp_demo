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

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *place;
@property (weak, nonatomic) IBOutlet UILabel *money;

@end

@implementation InsuranceViewController
@synthesize product;

-(void)viewWillAppear:(BOOL)animated {
    
    NSLog(@"applear");
    self.name.text = product.name;
    self.place.text = product.place;
    self.money.text = [NSString stringWithFormat:@"%ld", product.money];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", self.product.name);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)previous:(id)sender {
    NSLog(@"button click");
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
