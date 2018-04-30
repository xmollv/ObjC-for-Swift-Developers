//
//  ViewController.m
//  Project31
//
//  Created by Xavi Moll on 30/04/2018.
//  Copyright © 2018 xmollv. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *addressBar;
@property (strong, nonatomic) IBOutlet UIStackView *stackView;

@property (weak, nonatomic) UIWebView *activeWebView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setDefaultTitle];
    
    UIBarButtonItem *add = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addWebview)];
    UIBarButtonItem *delete = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemTrash target:self action:@selector(deleteWebview)];
    
    self.navigationItem.rightBarButtonItems = @[delete, add];
}

- (void)setDefaultTitle {
    self.title = @"Multibrowser";
}

- (void)addWebview {
    UIWebView *webView = [UIWebView new];
    webView.delegate = self;
    
    [self.stackView addArrangedSubview:webView];
    
    NSURL *url = [NSURL URLWithString:@"https://www.hackingwithswift.com"];
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
    
    webView.layer.borderColor = [[UIColor blueColor] CGColor];
    [self selectWebView: webView];
    
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(webViewTapped:)];
    recognizer.delegate = self;
    [webView addGestureRecognizer:recognizer];
}

- (void)deleteWebview {
    if (self.activeWebView == nil) return;
    
    NSUInteger index = [self.stackView.arrangedSubviews indexOfObject:self.activeWebView];
    [self.stackView removeArrangedSubview:self.activeWebView];
    [self.activeWebView removeFromSuperview];
    
    if ([self.stackView.arrangedSubviews count] == 0) {
        [self setDefaultTitle];
    } else {
        if (index == self.stackView.arrangedSubviews.count) {
            index = self.stackView.arrangedSubviews.count - 1;
        }
        
        UIWebView *webView = (UIWebView*)self.stackView.arrangedSubviews[index];
        [self selectWebView:webView];
    }
}

- (void)selectWebView:(UIWebView*)webView {
    for (UIView *view in self.stackView.arrangedSubviews) {
        view.layer.borderWidth = 0;
    }
    
    self.activeWebView = webView;
    webView.layer.borderWidth = 3;
    
    [self updateUI:webView];
}

- (void)webViewTapped:(UITapGestureRecognizer*)recognizer {
    UIWebView *webView = (UIWebView*)recognizer.view;
    [self selectWebView:webView];
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSURL *url = [NSURL URLWithString:self.addressBar.text];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.activeWebView loadRequest:request];
    [textField resignFirstResponder];
    return YES;
}

- (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
    if (self.traitCollection.horizontalSizeClass == UIUserInterfaceSizeClassCompact) {
        self.stackView.axis = UILayoutConstraintAxisVertical;
    } else {
        self.stackView.axis = UILayoutConstraintAxisHorizontal;
    }
}

- (void)updateUI:(UIWebView*)webView {
    self.title = [webView stringByEvaluatingJavaScriptFromString:@"document.title"];
    self.addressBar.text = webView.request.URL.absoluteString;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self updateUI:webView];
}

@end
