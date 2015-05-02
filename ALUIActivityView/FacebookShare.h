//  ALUIActivityView
//
//  Created by Arpit Lokwani on 5/2/15.
//  Copyright (c) 2015 Arpit Lokwani. All rights reserved.
//
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
@interface FacebookShare : UIActivity
@property (strong, nonatomic) NSDictionary *backLinkInfo;
@property (weak, nonatomic) UIView *backLinkView;
@property (weak, nonatomic) UILabel *backLinkLabel;
@end
