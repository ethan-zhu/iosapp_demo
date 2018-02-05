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
#import "Product.h"


@interface HomeController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *balance;
@property(strong, nonatomic) NSMutableArray *array;
@property (weak, nonatomic) IBOutlet UITableView *table;


@end

@implementation HomeController
@synthesize user;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _name.text = user.username;    
    _balance.text =  [NSString stringWithFormat:@"%ld", user.balance];
    
    self.array = [[NSMutableArray alloc] init];

    Product* pro1 = [[Product alloc] init];
    [pro1 initObject:@"life insurance" place:@"Shanghai" money:500];
    [self.array addObject:pro1];
    
    Product* pro2 = [[Product alloc] init];
    [pro2 initObject:@"house insurance" place:@"SuZhou" money:30];
    [self.array addObject:pro2];
    
    Product* pro3 = [[Product alloc] init];
    [pro3 initObject:@"car insurance" place:@"China" money:100];
    [self.array addObject:pro2];
    
    Product* pro4 = [[Product alloc] init];
    [pro4 initObject:@"property insurance" place:@"Shanghai" money:50];
    [self.array addObject:pro4];
    
    
    self.table.delegate = self;
    self.table.dataSource = self;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)logout:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.array count];
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* title =@"insuranceProducts";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:title];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:title];
    }
    cell.textLabel.text = [(Product*)[self.array objectAtIndex:indexPath.row] name];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@", [self.array objectAtIndex:indexPath.row]);
}

@end

