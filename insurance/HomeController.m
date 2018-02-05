//
//  HomeController.m
//  insurance
//
//  Created by tony on 05/02/2018.
//  Copyright © 2018 tony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HomeController.h"
#import "User.h"


@interface HomeController ()

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *balance;

@end

@implementation HomeController
@synthesize user;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //NSLog(@"hello here was the home page");
    _name.text = user.username;
    NSString *balance =[NSString stringWithFormat:@"%ld", user.balance];
    
    //NSLog(@"%@", balance);
    _balance.text =  balance;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)logout:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}

@end

