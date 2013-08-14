//
//  CCSidebarViewController.m
//  CrowdCal
//
//  Created by Danish on 8/13/13.
//  Copyright (c) 2013 CrowdCal. All rights reserved.
//

#import "CCSidebarViewController.h"
#import "SWRevealViewController.h"


@interface CCSidebarViewController ()

@end

@implementation CCSidebarViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.view.backgroundColor = [ UIColor colorWithWhite : 0.2f alpha : 1.0f ] ;
    self.tableView.backgroundColor = [ UIColor colorWithWhite : 0.2f alpha : 1.0f ] ;
    self.tableView.separatorColor = [ UIColor colorWithWhite : 0.15f alpha : 0.2f ] ;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- ( void ) prepareForSegue : ( UIStoryboardSegue * ) segue sender : ( id ) sender
{
    if ( [ segue isKindOfClass : [ SWRevealViewControllerSegue class ] ] ) {
        SWRevealViewControllerSegue * swSegue = ( SWRevealViewControllerSegue * ) segue;
        
        swSegue.performBlock = ^ ( SWRevealViewControllerSegue * rvc_segue, UIViewController * svc, UIViewController * dvc ) {
            
            UINavigationController * navController = ( UINavigationController * ) self.revealViewController.frontViewController;
            [ navController setViewControllers : @ [ dvc ] animated : NO ] ;
            [ self.revealViewController setFrontViewPosition : FrontViewPositionLeft animated : YES ] ;
        } ;
        
    }
    
}
#pragma mark - Table view data source


@end
