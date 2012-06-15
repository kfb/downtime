//
//  KFBDownloadTests.m
//  Downtime
//
//  Created by kfb on 02/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KFBDownloadTests.h"

@implementation KFBDownloadTests

- (void)testInitWithSourceURL
{
    NSURL *url = [[NSURL alloc] initWithString:@"http://localhost/"];
    KFBDownload *download = [[KFBDownload alloc] initWithSourceURL:url];
    
    STAssertEquals([download sourceURL], url, @"source URL was not stored correctly");
    
    [download release];
    [url release];
}

- (void)testStartDownload
{
    NSURL *url = [[NSURL alloc] initWithString:@"http://google.com"];
    KFBDownload *download = [[KFBDownload alloc] initWithSourceURL:url];
    
    [download startDownload];
    
    [download release];
    [url release];
}

@end
