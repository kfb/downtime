//
//  KFBDownloadController.m
//  Downtime
//
//  Created by kfb on 02/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KFBDownloadController.h"

@implementation KFBDownloadController

- (IBAction)addDownload:(id)sender
{
    // Get the download list from the app delegate
    NSMutableArray *downloads = [[KFBDownloads sharedInstance] downloads];
    
    // Create a new download object and add it to the list
    NSURL *url = [NSURL URLWithString:[sourceURL stringValue]];
    KFBDownload *download = [[KFBDownload alloc] initWithSourceURL:url];
    [downloads addObject:download];
    [download release];
    
    // Close the sheet
    [addNewURLWindow orderOut:nil];
    [NSApp endSheet:addNewURLWindow];
}

- (IBAction)cancel:(id)sender
{
    // Close the sheet without saving
    [addNewURLWindow orderOut:nil];
    [NSApp endSheet:addNewURLWindow];
}

@end
