//
//  SentryExampleViewController.m
//  SentryExample
//
//  Created by David Cramer on 12/28/12.
//  Copyright (c) 2012 GetSentry. All rights reserved.
//

#import "SentryExampleViewController.h"
#import <RavenClient.h>

@interface SentryExampleViewController ()

@end

@implementation SentryExampleViewController

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

- (NSException *)createException
{
    return [NSException
            exceptionWithName:@"ExampleError"
            reason:@"This is an example error"
            userInfo:NULL];
}

- (IBAction)causeException:(id)sender {
    @throw [NSException createException()];
}

- (IBAction)callCaptureException:(id)sender {
    NSException *exception = self.createException();
    [[RavenClient sharedClient] captureException:exception];
}

- (IBAction)callCaptureMessage:(id)sender {
    NSString *message = @"This is an example message";
    [[RavenClient sharedClient] captureMessage:message];
}
@end
