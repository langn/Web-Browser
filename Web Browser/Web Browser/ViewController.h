//
//  ViewController.h
//  Web Browser
//
//  Created by iD Student on 6/17/14.
//  Copyright (c) 2014 Lomo LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>
- (IBAction)goButton:(id)sender;
- (IBAction)goBack:(id)sender;
- (IBAction)goForwards:(id)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UITextField *addressTextField;
@end
