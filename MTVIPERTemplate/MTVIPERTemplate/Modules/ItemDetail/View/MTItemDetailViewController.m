//
//  MTItemDetailViewController.m
//  MTVIPERTemplate
//
//  Created by MAXIM TSVETKOV on 10.10.15.
//  Copyright © 2015 MAXIM TSVETKOV. All rights reserved.
//

#import "MTItemDetailViewController.h"
#import "MTItemDetailViewConstants.h"

@interface MTItemDetailViewController ()

@end

@implementation MTItemDetailViewController
@synthesize presenter = _presenter;

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if ([self.presenter respondsToSelector:@selector(onWillAppearView)]) {
        [self.presenter onWillAppearView];
    }
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if ([self.presenter respondsToSelector:@selector(onDidAppearView)]) {
        [self.presenter onDidAppearView];
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];

    if ([self.presenter respondsToSelector:@selector(onWillDisappearView)]) {
        [self.presenter onWillDisappearView];
    }
}

#pragma mark - MTItemDetailViewInterface

- (void)configureNavigationBarWithTitle:(NSString *)title
{
    self.navigationItem.title = title;
}

- (void)configureNameWithText:(NSString *)text
{
    //
}

- (void)configureDescriptionWithText:(NSString *)text
{
    //
}

- (void)reloadCells
{
    [self.tableView beginUpdates];
    [self.tableView endUpdates];
}

- (void)configureMapWithCoordinates:(NSDictionary *)coordinates
{
    //
}

- (void)configurePhotoCellAsAddImage
{
    //
}

- (void)configurePhotoCellAsNoImage
{
    //
}

- (void)configureImageWithImage:(UIImage *)image
{
    //
}

- (void)configureRightBarButtonOnNavigationBarAsSave
{
    UIBarButtonItem *saveBarButton = [[UIBarButtonItem alloc]
                                      initWithBarButtonSystemItem:UIBarButtonSystemItemSave
                                      target:self
                                      action:@selector(saveButtonPressed:)];
    self.navigationItem.rightBarButtonItem = saveBarButton;
}

- (void)configureLeftBarButtonOnNavigationBarAsCancel
{
    UIBarButtonItem *cancelBarButton = [[UIBarButtonItem alloc]
                                      initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                      target:self
                                      action:@selector(cancelButtonPressed:)];
    self.navigationItem.leftBarButtonItem = cancelBarButton;
}

- (void)configureLeftBarButtonOnNavigationBarAsClose
{
    UIBarButtonItem *closeBarButton = [[UIBarButtonItem alloc]
                                       initWithTitle:NSLocalizedString(@"Close", nil)
                                       style:UIBarButtonItemStyleBordered
                                       target:self
                                       action:@selector(closeButtonPressed:)];
    self.navigationItem.leftBarButtonItem = closeBarButton;
}

- (void)enableRightBarButtonOnNavigationBar
{
    self.navigationItem.rightBarButtonItem.enabled = YES;
}

- (void)disableRightBarButtonOnNavigationBar
{
    self.navigationItem.rightBarButtonItem.enabled = NO;
}

- (void)enableActivityForImageLoading
{
    //
}

- (void)disableActivityForImageLoading
{
    //
}

- (void)enableTextField
{
    //
}

- (void)disableTextField
{
    //
}

- (void)enableTextView
{
    //
}

- (void)disableTextView
{
    //
}

- (void)enableDropPinOnMapView
{
    //
}

- (void)disableDropPinOnMapView
{
    //
}

- (void)beginEditName
{
    //
}

- (void)beginEditDescription
{
    //
}

- (void)closeView
{
    if (IS_IPAD) {
        [self dismissViewControllerAnimated:YES
                                 completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

#pragma mark - IB Actions

- (IBAction)saveButtonPressed:(id)sender
{
    if ([self.presenter respondsToSelector:@selector(onDidPressRightBarButtonOnNavigationBar)]) {
        [self.presenter onDidPressRightBarButtonOnNavigationBar];
    }
}

- (IBAction)closeButtonPressed:(id)sender
{
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}

- (IBAction)cancelButtonPressed:(id)sender
{
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}

@end
