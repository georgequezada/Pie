//
//  ViewController.m
//  PieProject
//
//  Created by Jorge Quezada on 11/30/12.
//  Copyright (c) 2012 proyektando. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configUI];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)configUI
{
    [self.page1Button addTarget:self action:@selector(navigateToPage:) forControlEvents:UIControlEventTouchUpInside];
    [self.page2Button addTarget:self action:@selector(navigateToPage:) forControlEvents:UIControlEventTouchUpInside];
    [self.page3Button addTarget:self action:@selector(navigateToPage:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)navigateToPage:(id)sender
{
    [self performSegueWithIdentifier:@"tabBarController" sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"tabBarController"])
    {
        UITabBarController *tabBarController = segue.destinationViewController;
        
        UIViewController *page1ViewController = [tabBarController.viewControllers objectAtIndex:0];
        UIViewController *page2ViewController = [tabBarController.viewControllers objectAtIndex:1];
        UIViewController *page3ViewController = [tabBarController.viewControllers objectAtIndex:2];
        
        if (sender == self.page1Button) {
            [tabBarController.navigationController pushViewController:page1ViewController animated:YES];
        }
        if (sender == self.page2Button) {
            [tabBarController.navigationController pushViewController:page2ViewController animated:YES];
        }
        if (sender == self.page3Button) {
            [tabBarController.navigationController pushViewController:page3ViewController animated:YES];
        }
    }
}
@end
