//
//  ViewController.m
//  ALUIActivityView
//
//  Created by Arpit Lokwani on 5/2/15.
//  Copyright (c) 2015 Arpit Lokwani. All rights reserved.
//

#import "ViewController.h"
#import "GooglePlus.h"
#import "FacebookShare.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shareBtnPressed:(id)sender {
    
//    NSString *textToShare = @"Text You want to share ";
//    NSURL *myWebsite = [NSURL URLWithString:@"http://www.mywebsite.com/"];
//    
//    //UIImage *image =[UIImage imageNamed:@""];
//    NSArray *objectsToShare = @[textToShare, myWebsite];
//    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:objectsToShare applicationActivities:[NSArray arrayWithObjects:nil]];
//       NSArray *excludedActivities = @[];
//    activityVC.excludedActivityTypes = excludedActivities;
//    [self presentViewController:activityVC animated:YES completion:nil];
    
    
    
    
    // **********************************//
    //               OR                  //
    // ***********************************//
    
    
    
    //  Google Plus  and FacebookShare is custom UIActivity Subclass for sharing the data.If you don't want custom UIActivity class uncomment the above code and comment the below code .
    
    
    GooglePlus *gPlus = [[GooglePlus alloc]init];
    FacebookShare *fb =[[FacebookShare alloc]init];
    NSString *textToShare = @"Look at this awesome website for aspiring iOS Developers!";
    NSURL *myWebsite = [NSURL URLWithString:@"http://www.codingexplorer.com/"];
    
    //UIImage *image =[UIImage imageNamed:@""];
    NSArray *objectsToShare = @[textToShare, myWebsite];
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:objectsToShare applicationActivities:[NSArray arrayWithObjects:gPlus,fb,nil]];
    activityVC.completionHandler = ^(NSString *activityType, BOOL completed)
    {
        //  NSLog(@" activityType: %@", activityType);
        
        //  NSLog(@" completed: %i", completed);
        
    };
    NSArray *excludedActivities = @[UIActivityTypePostToTwitter,
                                    UIActivityTypePostToWeibo,
                                    UIActivityTypeMessage,
                                    UIActivityTypePrint, UIActivityTypeCopyToPasteboard,
                                    UIActivityTypeAssignToContact, UIActivityTypeSaveToCameraRoll,
                                    UIActivityTypeAddToReadingList, UIActivityTypePostToFlickr,
                                    UIActivityTypePostToVimeo, UIActivityTypePostToTencentWeibo,UIActivityTypePostToFacebook];
    activityVC.excludedActivityTypes = excludedActivities;
    [self presentViewController:activityVC animated:YES completion:nil];

    
    
}
@end
