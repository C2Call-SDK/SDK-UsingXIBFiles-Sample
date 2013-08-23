//
//  XISecondViewController.m
//  SDK-UsingXIBFiles Sample
//
//  Created by Michael Knecht on 01.08.13.
//  Copyright (c) 2013 C2Call GmbH. All rights reserved.
//

#import "XISecondViewController.h"
#import <SocialCommunication/SocialCommunication.h>

@interface XISecondViewController ()

@end

@implementation XISecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)logout:(id)sender {
    [[C2CallAppDelegate appDelegate] logoutUser];
}

@end
