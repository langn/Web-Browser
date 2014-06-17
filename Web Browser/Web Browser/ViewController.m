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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goButton:(id)sender {
    NSString *urlString = self.addressTextField.text;
    NSURL *url;
    
    if([urlString hasPrefix:@"http://"] || [urlString hasPrefix:@"http:/"] || [urlString hasPrefix:@"http:"]) {
        url = [NSURL URLWithString:urlString];
    }else {
        url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@", self.addressTextField.text]];
    }
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:url];
    [self.webView loadRequest:urlRequest];
    
     [self.addressTextField setText];
}

- (IBAction)goBack:(id)sender {
    [self.webView goBack];
}
- (IBAction)goForwards:(id)sender {
    [self.webView goForward];
}
@end
