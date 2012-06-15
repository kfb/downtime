//
//  KFBAppDelegate.m
//  Downtime
//
//  Created by kfb on 02/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KFBAppDelegate.h"

@implementation KFBAppDelegate

@synthesize mainWindow;
@synthesize addNewURLWindow;

@synthesize downloadsTable;

- (void)applicationDidFinishLaunching:(NSNotification *)notification
{
    // TODO: reinstate download list
}

- (void)applicationWillTerminate:(NSNotification *)notification
{
    // TODO: serialise download list to a file
}

- (IBAction)addNewURL:(id)sender
{
    // Open up the "Add new URL" sheet
    [NSApp beginSheet:addNewURLWindow modalForWindow:mainWindow modalDelegate:self
       didEndSelector:@selector(updateTable) contextInfo:nil];
}

- (void)updateTable
{
    // Refresh the table
    [downloadsTable reloadData];
}

@end
