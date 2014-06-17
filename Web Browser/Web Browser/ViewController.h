//
//  ViewController.h
//  Web Browser
//
//  Created by iD Student on 6/17/14.
//  Copyright (c) 2014 Lomo LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>
- (IBAction)goButton:(id)sender; //go button
- (IBAction)goBack:(id)sender; //back button
- (IBAction)goForwards:(id)sender; //forward button
@property (weak, nonatomic) IBOutlet UIWebView *webView; //webview
@property (weak, nonatomic) IBOutlet UITextField *addressTextField; //address field 
@end
