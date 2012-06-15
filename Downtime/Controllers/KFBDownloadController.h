//
//  KFBDownloadController.h
//  Downtime
//
//  Created by kfb on 02/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KFBAppDelegate.h"
#import "KFBDownload.h"
#import "KFBDownloads.h"

@interface KFBDownloadController : NSObject {
    IBOutlet NSTextField *sourceURL;
    IBOutlet NSButton    *addButton;
    
    IBOutlet NSWindow *addNewURLWindow;
}

- (IBAction)addDownload:(id)sender;
- (IBAction)cancel:(id)sender;

@end
