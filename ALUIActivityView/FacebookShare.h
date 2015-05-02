//
//  FacebookShare.h
//  RFP
//
//  Created by emb-arpilok on 12/02/15.
//  Copyright (c) 2015 Pushpa Raja. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
@interface FacebookShare : UIActivity
@property (strong, nonatomic) NSDictionary *backLinkInfo;
@property (weak, nonatomic) UIView *backLinkView;
@property (weak, nonatomic) UILabel *backLinkLabel;
@end
