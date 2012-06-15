//
//  KFBDownloadsTableRow.h
//  Downtime
//
//  Created by kfb on 03/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "KFBDownloadProgressDelegate.h"

@interface KFBDownloadsTableRow : NSView <KFBDownloadProgressDelegate>

@property (assign) IBOutlet NSImageView *image;
@property (assign) IBOutlet NSTextField *URL;
@property (assign) IBOutlet NSProgressIndicator *progressBar;

@end
