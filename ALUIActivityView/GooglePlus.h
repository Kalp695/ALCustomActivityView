

//  ALUIActivityView
//
//  Created by Arpit Lokwani on 5/2/15.
//  Copyright (c) 2015 Arpit Lokwani. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <GooglePlus/GooglePlus.h>

@class GPPSignInButton;

@interface GooglePlus : UIActivity<GPPSignInDelegate>


- (void) didTapShare;
@end
