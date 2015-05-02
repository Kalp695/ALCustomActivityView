//
//  ALUIActivityView
//
//  Created by Arpit Lokwani on 5/2/15.
//  Copyright (c) 2015 Arpit Lokwani. All rights reserved.
//
//
#import "GooglePlus.h"
#import <GoogleOpenSource/GoogleOpenSource.h>

@implementation GooglePlus



//***** for more clarification go to  https://developers.google.com/+/mobile/ios/share/ ****//


static NSString * const kClientId =
@"Your_GooglePlus_Key";

- (NSString *)activityType
{
    return @"GooglePlus";
    
}

- (NSString *)activityTitle
{
    
    return @"GooglePlus ";
}

- (UIImage *)_activityImage
{
    // Note: These images need to have a transparent background and I recommend these sizes:
    // iPadShare@2x should be 126 px, iPadShare should be 53 px, iPhoneShare@2x should be 100
    // px, and iPhoneShare should be 50 px. I found these sizes to work for what I was making.
    
    
        return [UIImage imageNamed:@"G+-60x60.png"];
    
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems
{
    NSLog(@"%s", __FUNCTION__);
    return YES;
}

- (void)prepareWithActivityItems:(NSArray *)activityItems
{
    NSLog(@"%s",__FUNCTION__);
}

- (UIViewController *)activityViewController
{
    NSLog(@"%s",__FUNCTION__);
    return nil;
}

- (void)performActivity
{
//    if ([[GPPSignIn sharedInstance] authentication]) {
//         [self didTapShare];
//    }else{
//       
//        GPPSignIn *signIn = [GPPSignIn sharedInstance];
//        signIn.clientID = kClientId;
//        signIn.scopes = @[ kGTLAuthScopePlusLogin ];
//        
//        if (![signIn trySilentAuthentication]) {
//            
//            [self didTapShare];
//            
//        }
//    }
    
    
}

- (void) didTapShare {
    [self authenticateWithGoogle];
}
- (void)authenticateWithGoogle {
    // use the Google+ SDK to get an OAuth token
    GPPSignIn *signIn = [GPPSignIn sharedInstance];
    signIn.shouldFetchGooglePlusUser = YES;
    signIn.clientID = kClientId;
    signIn.scopes = @[kGTLAuthScopePlusLogin];
    signIn.delegate = self;
    // authenticate will do a callback to finishedWithAuth:error:
    [signIn authenticate];
}

-(void)refreshInterfaceBasedOnSignIn {
    id<GPPNativeShareBuilder> shareBuilder = [[GPPShare sharedInstance] nativeShareDialog];
    [shareBuilder setURLToShare:[NSURL URLWithString:@"https://www.example.com/restaurant/sf/1234567/"]];
    [shareBuilder setPrefillText:@"Share your post ........."];
    [shareBuilder setContentDeepLinkID:@"rest=1234567"];
    
    //  [shareBuilder setTitle:(NSString *)title
    //      description:(NSString *)description
    //    thumbnailURL:(NSURL *)thumbnailURL;];
    
    
    [shareBuilder setCallToActionButtonWithLabel:@"RSVP"
                                             URL:[NSURL URLWithString:@"https://www.example.com/reservation/4815162342/"]
                                      deepLinkID:@"rsvp=4815162342"];
    
    [shareBuilder open];
    

   
}
- (void)finishedWithAuth: (GTMOAuth2Authentication *)auth
                   error: (NSError *) error {
    NSLog(@"Received error %@ and auth object %@",error, auth);
    if (error) {
        // Do some error handling here.
    } else {
        [self refreshInterfaceBasedOnSignIn];
    }
}


@end
