//
//  SentryExampleViewController.h
//  SentryExample
//
//  Created by David Cramer on 12/28/12.
//  Copyright (c) 2012 GetSentry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SentryExampleViewController : UIViewController
- (IBAction)causeException:(id)sender;
- (IBAction)callCaptureException:(id)sender;
- (IBAction)callCaptureMessage:(id)sender;

@end
