// Copyright 2012 Todd Reed
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "QViewController.h"

@interface QViewController ()

@end

@implementation QViewController

#pragma mark - UIViewController

- (void)loadView
{
#if 0
    NSBundle *bundle = [NSBundle mainBundle];
    QPDFView *view = [[[QPDFView alloc] initWithFrame:CGRectZero] autorelease];
    view.backgroundColor = [UIColor whiteColor];
    view.PDFURL = [NSURL fileURLWithPath:[bundle pathForResource:@"Touchposé" ofType:@"pdf"]];
    view.contentGravity = QContentGravityResizeAspect;
#else
    UIImageView *view = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Touchposé"]] autorelease];
    view.backgroundColor = [UIColor whiteColor];
    view.contentMode = UIViewContentModeCenter;
#endif
    //view.PDFURL = [NSURL fileURLWithPath:[bundle pathForResource:@"todd2" ofType:@"pdf"]];
    self.view = view;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    }
    else
    {
        return YES;
    }
}

@end
