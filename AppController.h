//
//  AppController.h
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

#import <Cocoa/Cocoa.h>
#import "StyledWindow.h"

@interface AppController : NSObject <NSToolbarDelegate>
{
	IBOutlet StyledWindow *styledWindow;

	IBOutlet NSTextField *topVal;
	IBOutlet NSTextField *botVal;

	IBOutlet NSColorWell *startCol;
	IBOutlet NSColorWell *endCol;
	IBOutlet NSColorWell *borderCol;

	IBOutlet NSColorWell *startBotCol;
	IBOutlet NSColorWell *endBotCol;
	IBOutlet NSColorWell *borderBotCol;

	IBOutlet NSColorWell *BGCol;
}

- (IBAction)adjustTop:(id)sender;
- (IBAction)adjustBottom:(id)sender;

- (IBAction)setStartColor:(id)sender;
- (IBAction)setEndColor:(id)sender;
- (IBAction)setBorderColor:(id)sender;

- (IBAction)setStartBotColor:(id)sender;
- (IBAction)setEndBotColor:(id)sender;
- (IBAction)setBorderBotColor:(id)sender;

- (IBAction)setBGColor:(id)sender;

@end
