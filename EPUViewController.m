//
//  EPUViewController.m
//  EmailPopUP
//
//  Created by Savitha Reddy on 7/2/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "EPUViewController.h"
//#import <MessageUI/MessageUI.h>
//#import  <Social/Social.h>
//#import <Accounts/Accounts.h>
//#import <MobileCoreServices/MobileCoreServices.h>


@interface EPUViewController ()

@end

@implementation EPUViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 200, 50)];
        button.backgroundColor = [UIColor blueColor];
        [button setTitle:@"Click To Share" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(shareButton:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
       
    }
    return self;
}

- (IBAction)shareButton:(UIButton *)sender
{
    NSString *textToShare = @"Look at this awesome website for aspiring iOS Developers!";
    NSURL *myWebsite = [NSURL URLWithString:@"http://www.codingexplorer.com/"];

    NSArray *objectsToShare = @[textToShare, myWebsite];
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems: objectsToShare    applicationActivities:nil];
    
//    NSArray *excludeActivities = @[UIActivityTypeAirDrop,
//                                   UIActivityTypePrint,
//                                   UIActivityTypeAssignToContact,
//                                   UIActivityTypeSaveToCameraRoll,
//                                   UIActivityTypeAddToReadingList,
//                                   UIActivityTypePostToFlickr,
//                                   UIActivityTypePostToVimeo];
//    
//    activityVC.excludedActivityTypes = excludeActivities;
    
    [self presentViewController:activityVC animated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}


@end
