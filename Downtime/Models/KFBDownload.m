//
//  KFBDownload.m
//  Downtime
//
//  Created by kfb on 02/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KFBDownload.h"

@implementation KFBDownload

@synthesize sourceURL;
@synthesize delegate;

- (id)initWithSourceURL:(NSURL *)url
{
    if (self = [super init])
    {
        [self setSourceURL:url];
    }
    
    return self;
}

- (void)dealloc
{
    [sourceURL release];
    
    [super dealloc];
}

- (void)startDownload
{
    NSLog(@"Starting download from %@...", [self sourceURL]);

    NSURLRequest *request   = [NSURLRequest requestWithURL:[self sourceURL]];
    NSURLDownload *download = [[NSURLDownload alloc] initWithRequest:request delegate:self];
    
    [download setDeletesFileUponFailure:YES];
    
    expectedLength = 0;
    receivedByteCount = 0;
}

- (void)download:(NSURLDownload *)download didReceiveResponse:(NSURLResponse *)response
{
    NSLog(@"Received response with suggested filename '%@'", [response suggestedFilename]);
    
    expectedLength = [response expectedContentLength];
    
    NSLog(@"Expected content length is %lld bytes", expectedLength);
    
    NSString *downloadDirectory = [@"~/Downloads" stringByExpandingTildeInPath];
    NSString *downloadPath = [NSString stringWithFormat:@"%@/%@", downloadDirectory, [response suggestedFilename]];
                              
    [download setDestination:downloadPath allowOverwrite:YES];
}

- (void)download:(NSURLDownload *)download didReceiveDataOfLength:(NSUInteger)length
{
    NSLog(@"Received %lu bytes", length);
    
    receivedByteCount += length;
    
    double percent = ((double)receivedByteCount / (double)expectedLength) * 100.0f;
    
    NSLog(@"percent progress = %f", percent);
    
    [delegate download:self didAdvanceToProgressPercent:percent];
}

- (void)downloadDidFinish:(NSURLDownload *)download
{
    NSLog(@"Download of %@ completed successfully.", [[download request] URL]);
    
    [delegate download:self didAdvanceToProgressPercent:100.0f];
    
    [download release];
}

- (void)download:(NSURLDownload *)download didFailWithError:(NSError *)error
{
    NSLog(@"Download failed with error '%@'", [error localizedDescription]);
    
    // TODO: update delegate
    
    [download release];
}

@end
