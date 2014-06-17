//
//  ViewController.m
//  Web Browser
//
//  Created by iD Student on 6/17/14.
//  Copyright (c) 2014 Lomo LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self.webView setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goButton:(id)sender { //loads the web page
    NSString *urlString = self.addressTextField.text;
    NSURL *url;
    
    if([urlString hasPrefix:@"http://"] || [urlString hasPrefix:@"http:/"] || [urlString hasPrefix:@"http:"]) {
        url = [NSURL URLWithString:urlString];
    }else {
        url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@", self.addressTextField.text]];
    }
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:url];
    [self.webView loadRequest:urlRequest];
    

}

- (IBAction)goBack:(id)sender {
    [self.webView goBack];
}
- (IBAction)goForwards:(id)sender {
    [self.webView goForward];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView { //displays web page
    [self.addressTextField setText:webView.request.URL.absoluteString];
}
@end
