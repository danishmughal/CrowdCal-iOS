//
//  CCProfileViewController.m
//  CrowdCal
//
//  Created by Danish on 8/13/13.
//  Copyright (c) 2013 CrowdCal. All rights reserved.
//

#import "CCProfileViewController.h"
#import "SWRevealViewController.h"

@interface CCProfileViewController ()

@end

@implementation CCProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    self.navigationItem.leftBarButtonItem = _sidebarButton;
    self.navigationItem.rightBarButtonItem = nil;

    self.navigationItem.title = @"My Profile";
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector ( revealToggle : );
    
    // Set the gesture
    [ self.view addGestureRecognizer : self.revealViewController.panGestureRecognizer ] ;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
