//
//  ViewController.m
//  good
//
//  Created by tony on 29/01/2018.
//  Copyright © 2018 tony. All rights reserved.
//

#import "ViewController.h"
#import "User.h"
#import "HomeController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *username; 
@property (weak, nonatomic) IBOutlet UITextField *passport;

@property(strong, nonatomic) NSMutableArray *array;
@property(strong, nonatomic) User* currentUser;

@end

@implementation ViewController
@synthesize currentUser;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.array = [[NSMutableArray alloc] init];
    self.passport.secureTextEntry = YES;
    
    User* user1 = [[User alloc] init];
    [user1 initObject:@"tony" pass:@"tony" bala:1000];
    [self.array addObject:user1];
    
    User* user2 = [[User alloc] init];
    [user2 initObject:@"shen" pass:@"shen" bala:100];
    [self.array addObject:user2];
    
    User* user3 = [[User alloc] init];
    [user3 initObject:@"chen" pass:@"chen" bala:300];
    [self.array addObject:user3];
    
    User* user4 = [[User alloc] init];
    [user4 initObject:@"li" pass:@"li" bala:500];
    [self.array addObject:user4];
    
    currentUser = Nil;
    NSLog(@"load logon page");
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logon:(id)sender {
    
    NSString* usernameText = self.username.text;
    NSString* passwordText = self.passport.text;
    
    
    User* user = [self findUser:usernameText pass:passwordText];
    if(user != Nil){
        currentUser = user;
        //UIStoryboard* story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        //UIViewController *home = [story instantiateViewControllerWithIdentifier:@"home"];
        //[self.navigationController pushViewController:home animated:YES];

        [self performSegueWithIdentifier:@"showUserDetails" sender:self];
        //NSLog(user.username);
    } else {
        currentUser=Nil;
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"Username or Password was wrong" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        
        [alert show];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"showUserDetails"]) {
        HomeController* home = segue.destinationViewController;
        home.user = currentUser;
        //NSLog(@"fired");
    }
}


-(User*) findUser:(NSString*)username pass:(NSString*)password {
    for(User* user in self.array) {
        if([user.username isEqualToString:username] && [user.password isEqualToString:password]) {
            return user;
        }
    }
    return Nil;
}

@end
