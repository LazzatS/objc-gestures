//
//  TapViewController.m
//  GesturesAppcoda
//
//  Created by Lazzat Seiilova on 26.07.2021.
//

#import "TapViewController.h"

@interface TapViewController ()
- (void) handleSingleTapGesture: (UITapGestureRecognizer *)tapGestureRecognizer;
- (void) handleDoubleTapGesture: (UITapGestureRecognizer *)tapGestureRecognizer;
@end

@implementation TapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapGesture:)];
    singleTapGesture.numberOfTapsRequired = 1;
    [self.testView addGestureRecognizer:singleTapGesture];
    
    UITapGestureRecognizer *doubleTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDoubleTapGesture:)];
    doubleTapRecognizer.numberOfTapsRequired = 2;
    doubleTapRecognizer.numberOfTouchesRequired = 2;
    [self.testView addGestureRecognizer:doubleTapRecognizer];
}

- (void) handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer {
    
    CGFloat newWidth = 100.0;
    
    if (self.testView.frame.size.width == 100.0) {
        newWidth = 200.0;
    }
    
    CGPoint currentCenter = self.testView.center;
    
    self.testView.frame = CGRectMake(self.testView.frame.origin.x, self.testView.frame.origin.y, newWidth, self.testView.frame.size.height);
    self.testView.center = currentCenter;
    
}

- (void) handleDoubleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer {
    CGSize newSize = CGSizeMake(100.0, 100.0);
    if (self.testView.frame.size.width == 100.0 && self.testView.frame.size.height == 100.0) {
        newSize.width = 200.0;
        newSize.height = 200.0;
    }
    
    CGPoint currentCenter = self.testView.center;
    
    self.testView.frame = CGRectMake(self.testView.frame.origin.x, self.testView.frame.origin.y, newSize.width, newSize.height);
    self.testView.center = currentCenter;
}

@end
