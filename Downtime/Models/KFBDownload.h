//
//  KFBDownload.h
//  Downtime
//
//  Created by kfb on 02/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KFBDownloadProgressDelegate.h"

@interface KFBDownload : NSObject <NSURLDownloadDelegate> {
    long long expectedLength;
    long long receivedByteCount;
}

@property (retain) NSURL *sourceURL;
@property (retain) id<KFBDownloadProgressDelegate> delegate;

// Initialise with the given NSURL instance.
- (id)initWithSourceURL:(NSURL *)url;

// Start the download in a new thread.
- (void)startDownload;

@end
