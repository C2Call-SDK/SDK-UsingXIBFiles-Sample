//
//  XIFirstViewController.m
//  SDK-UsingXIBFiles Sample
//
//  Created by Michael Knecht on 01.08.13.
//  Copyright (c) 2013 C2Call GmbH. All rights reserved.
//

#import "XIFirstViewController.h"
#import <SocialCommunication/SocialCommunication.h>

@interface XIFirstViewController ()

@end

@implementation XIFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
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

-(IBAction)callTestCall:(id)sender
{
    [[C2CallPhone currentPhone] callVoIP:@"9bc2858f1194dc1c107"];
}

@end
