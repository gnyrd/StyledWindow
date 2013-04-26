//
//  AppController.m
//  StyledWindow
//
//  Created by Jeff Ganyard on 11/3/06.
/*
	Copyright (c) 2006 Bithaus.

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

	Sending an email to ganyard (at) bithaus.com informing where the code is being used would be appreciated.
*/

#import "AppController.h"


@implementation AppController

- (void)awakeFromNib
{
	// initial colors for colorwells
	[startCol setColor:[NSColor colorWithDeviceWhite:0.77 alpha:1.0]];
	[endCol setColor:[NSColor colorWithDeviceWhite:0.58 alpha:1.0]];
	[borderCol setColor:[NSColor colorWithDeviceWhite:0.25 alpha:1.0]];

	[startBotCol setColor:[NSColor colorWithDeviceWhite:0.77 alpha:1.0]];
	[endBotCol setColor:[NSColor colorWithDeviceWhite:0.58 alpha:1.0]];
	[borderBotCol setColor:[NSColor colorWithDeviceWhite:0.25 alpha:1.0]];

	[BGCol setColor:[NSColor whiteColor]];


	// initial heights of top and bottom borders
	[styledWindow setTopBorderHeight:35.0];
	[styledWindow setBottomBorderHeight:25.0];

	// set initial colors for styledwindow from colorwells
	[styledWindow setTopBorderStartColor:[startCol color]];
	[styledWindow setTopBorderEndColor:[endCol color]];
	[styledWindow setTopBorderEdgeColor:[borderCol color]];

	[styledWindow setBottomBorderStartColor:[startBotCol color]];
	[styledWindow setBottomBorderEndColor:[endBotCol color]];
	[styledWindow setBottomBorderEdgeColor:[borderBotCol color]];

	[styledWindow setBgColor:[BGCol color]];

	// tell styledwindow to use the settings made above
	[styledWindow setBackgroundColor:[styledWindow styledBackground]];

	// Add a toolbar
	NSToolbar *toolbar = [[NSToolbar alloc] initWithIdentifier:@"styled_toolbar"];
	[toolbar setDelegate:self];
	[toolbar setVisible:NO];
	[styledWindow setToolbar:toolbar];
}

- (NSArray *)toolbarDefaultItemIdentifiers:(NSToolbar *)toolbar
{
    return [NSArray arrayWithObjects:@"Tool", @"Button", @"Item", nil];
}

- (NSArray *)toolbarAllowedItemIdentifiers:(NSToolbar *)toolbar
{
    return [NSArray arrayWithObjects:@"TestItem", @"TestItem2", @"TestItem3", nil];
}

- (NSToolbarItem *)toolbar:(NSToolbar *)toolbar itemForItemIdentifier:(NSString *)itemIdentifier willBeInsertedIntoToolbar:(BOOL)flag
{
    NSToolbarItem *item = [[NSToolbarItem alloc] initWithItemIdentifier:@"ToolbarItem"];
    [item setLabel:@"Toolbar Item"];
    [item setImage:[NSImage imageNamed:@"NSApplicationIcon"]];
    [item setTarget:styledWindow];
    [item setAction:@selector(windowDidResize:)];
    
    return item;
}

- (IBAction)adjustTop:(id)sender;
{
	int top;
	if (!sender)
		top = 100.0;
	else
		top = [sender intValue];

	[topVal setStringValue:[NSString stringWithFormat:@"%i", top]];
	[styledWindow setTopBorderHeight:top];
	[styledWindow setBackgroundColor:[styledWindow styledBackground]];
	[styledWindow display];
}
- (IBAction)adjustBottom:(id)sender;
{
	int bottom;
	if (!sender)
		bottom = 100.0;
	else
		bottom = [sender intValue];

	[botVal setStringValue:[NSString stringWithFormat:@"%i", bottom]];
	[styledWindow setBottomBorderHeight:bottom];
	[styledWindow setBackgroundColor:[styledWindow styledBackground]];
	[styledWindow display];
}

- (IBAction)setStartColor:(id)sender
{
	NSColor *aColor;
	if (!sender)
		aColor = [NSColor colorWithDeviceWhite:0.77 alpha:1.0];
	else
		aColor = [sender color];
	
	[styledWindow setTopBorderStartColor:aColor];
	[styledWindow setBackgroundColor:[styledWindow styledBackground]];
	[styledWindow display];
}
- (IBAction)setEndColor:(id)sender
{
	NSColor *aColor;
	if (!sender)
		aColor = [NSColor colorWithDeviceWhite:0.58 alpha:1.0];
	else
		aColor = [sender color];
	
	[styledWindow setTopBorderEndColor:aColor];
	[styledWindow setBackgroundColor:[styledWindow styledBackground]];
	[styledWindow display];
}
- (IBAction)setBorderColor:(id)sender
{
	NSColor *aColor;
	if (!sender)
		aColor = [NSColor colorWithDeviceWhite:0.25 alpha:1.0];
	else
		aColor = [sender color];
	
	[styledWindow setTopBorderEdgeColor:aColor];
	[styledWindow setBackgroundColor:[styledWindow styledBackground]];
	[styledWindow display];
}


- (IBAction)setStartBotColor:(id)sender
{
	NSColor *aColor;
	if (!sender)
		aColor = [NSColor colorWithDeviceWhite:0.77 alpha:1.0];
	else
		aColor = [sender color];
	
	[styledWindow setBottomBorderStartColor:aColor];
	[styledWindow setBackgroundColor:[styledWindow styledBackground]];
	[styledWindow display];
}
- (IBAction)setEndBotColor:(id)sender
{
	NSColor *aColor;
	if (!sender)
		aColor = [NSColor colorWithDeviceWhite:0.58 alpha:1.0];
	else
		aColor = [sender color];
	
	[styledWindow setBottomBorderEndColor:aColor];
	[styledWindow setBackgroundColor:[styledWindow styledBackground]];
	[styledWindow display];
}
- (IBAction)setBorderBotColor:(id)sender
{
	NSColor *aColor;
	if (!sender)
		aColor = [NSColor colorWithDeviceWhite:0.25 alpha:1.0];
	else
		aColor = [sender color];
	
	[styledWindow setBottomBorderEdgeColor:aColor];
	[styledWindow setBackgroundColor:[styledWindow styledBackground]];
	[styledWindow display];
}

- (IBAction)setBGColor:(id)sender
{
	NSColor *aColor;
	if (!sender)
		aColor = [NSColor whiteColor];
	else
		aColor = [sender color];

	[styledWindow setBgColor:aColor];
	[styledWindow setBackgroundColor:[styledWindow styledBackground]];
	[styledWindow display];
}

@end
