//
//  CCHomeViewController.m
//  CrowdCal
//
//  Created by Danish on 8/13/13.
//  Copyright (c) 2013 CrowdCal. All rights reserved.
//

#import "CCHomeViewController.h"
#import "SWRevealViewController.h"

@interface CCHomeViewController ()

@end

@implementation CCHomeViewController

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
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector ( revealToggle : );
    
    self.navigationItem.title = @"CrowdCal";
    
    // Set the gesture
    [ self.view addGestureRecognizer : self.revealViewController.panGestureRecognizer ] ;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
