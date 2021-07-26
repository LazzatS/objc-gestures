//
//  TapViewController.m
//  GesturesAppcoda
//
//  Created by Lazzat Seiilova on 26.07.2021.
//

#import "TapViewController.h"

@interface TapViewController ()
- (void) handleSingleTapGesture: (UITapGestureRecognizer *)tapGestureRecognizer;
@end

@implementation TapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapGesture:)];
    
    [self.testView addGestureRecognizer:singleTapGesture];
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

@end
