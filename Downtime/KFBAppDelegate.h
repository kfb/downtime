//
//  KFBAppDelegate.h
//  Downtime
//
//  Created by kfb on 02/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "KFBDownload.h"
#import "KFBDownloads.h"

@interface KFBAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *mainWindow;
@property (assign) IBOutlet NSWindow *addNewURLWindow;

@property (assign) IBOutlet NSTableView *downloadsTable;

- (IBAction)addNewURL:(id)sender;

@end
