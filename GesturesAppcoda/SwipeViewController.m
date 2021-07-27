//
//  SwipeViewController.m
//  GesturesAppcoda
//
//  Created by Lazzat Seiilova on 26.07.2021.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()
- (void) slideToRightWithGestureRecognizer: (UISwipeGestureRecognizer *)gestureRecognizer;
- (void) slideToLeftWithGestureRecognizer: (UISwipeGestureRecognizer *)gestureRecognizer;
- (void) slideToTopWithGestureRecognizer: (UISwipeGestureRecognizer *)gestureRecognizer;
- (void) slideToBottomWithGestureRecognizer: (UISwipeGestureRecognizer *)gestureRecognizer;
@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UISwipeGestureRecognizer *swipeRightOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightOrange.direction = UISwipeGestureRecognizerDirectionRight;
    
    UISwipeGestureRecognizer *swipeLeftOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftOrange.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [self.viewOrange addGestureRecognizer:swipeRightOrange];
    [self.viewOrange addGestureRecognizer:swipeLeftOrange];
    
    UISwipeGestureRecognizer *swipeUpBlack = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToTopWithGestureRecognizer:)];
    swipeUpBlack.direction = UISwipeGestureRecognizerDirectionUp;
    [self.viewBlack addGestureRecognizer:swipeUpBlack];
    
    UISwipeGestureRecognizer *swipeDownBlack = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToBottomWithGestureRecognizer:)];
    swipeDownBlack.direction = UISwipeGestureRecognizerDirectionDown;
    [self.viewBlack addGestureRecognizer:swipeDownBlack];
    
    [self.resetButton addTarget:self action:@selector(tapResetButton:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void) slideToRightWithGestureRecognizer: (UISwipeGestureRecognizer *)gestureRecognizer {
    [UIView animateWithDuration:0.5 animations:^{
        self.viewOrange.frame = CGRectOffset(self.viewOrange.frame, 320.0, 0.0);
    }];
}
- (void) slideToLeftWithGestureRecognizer: (UISwipeGestureRecognizer *)gestureRecognizer {
    [UIView animateWithDuration:0.5 animations:^{
        self.viewOrange.frame = CGRectOffset(self.viewOrange.frame, -320.0, 0.0);
    }];
}

- (void) slideToTopWithGestureRecognizer: (UISwipeGestureRecognizer *)gestureRecognizer {
    [UIView animateWithDuration:0.5 animations:^{
        self.viewBlack.frame = CGRectOffset(self.viewBlack.frame, 0.0, -180.0);
    }];
}
- (void) slideToBottomWithGestureRecognizer: (UISwipeGestureRecognizer *)gestureRecognizer {
    [UIView animateWithDuration:0.5 animations:^{
        self.viewBlack.frame = CGRectOffset(self.viewBlack.frame, 0.0, 180.0);
    }];
}
- (IBAction)tapResetButton:(id)sender {
    CGPoint currentOriginOrange = CGPointMake(self.viewOrange.frame.origin.x, self.viewOrange.frame.origin.y);
    CGPoint currentOriginBlack = CGPointMake(self.viewBlack.frame.origin.x, self.viewBlack.frame.origin.y);
    if (currentOriginOrange.x != 0.0 || currentOriginBlack.y != 322.0) {
        NSLog(@"no");
        currentOriginOrange.x = 0;
        currentOriginBlack.y = 322;
    }
    self.viewOrange.frame = CGRectMake(currentOriginOrange.x, currentOriginOrange.y, 414, 100);
    self.viewBlack.frame = CGRectMake(currentOriginBlack.x, currentOriginBlack.y, 414, 200);
    
}

@end
