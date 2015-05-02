//
//  GooglePlus.h
//  Reliance
//
//  Created by emb-arpilok on 14/01/15.
//  Copyright (c) 2015 Embitel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GooglePlus/GooglePlus.h>

@class GPPSignInButton;

@interface GooglePlus : UIActivity<GPPSignInDelegate>


- (void) didTapShare;
@end
