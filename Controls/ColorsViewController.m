//
//  ColorsViewController.m
//  Controls
//
//  Created by Artem Konarev on 01.04.17.
//  Copyright © 2017 it-machine. All rights reserved.
//

#import "ColorsViewController.h"

@interface ColorsViewController ()
@property (weak, nonatomic) IBOutlet UISlider *redColorSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenColorSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueColorSlider;
@property (weak, nonatomic) IBOutlet UIView *colorView;

- (IBAction)onSegmentedControlChanged:(UISegmentedControl *)sender;

- (IBAction)onValueChanged:(UISlider *)sender;

- (IBAction)onSwitch:(UISwitch *)sender;

@end

typedef enum : NSUInteger {
    ColorSchemeRGB,
    ColorSchemeHSV,
} ColorScheme;


@implementation ColorsViewController {
    BOOL isRGB;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    isRGB = YES;
    
    self.redColorSlider.value = 0;
    self.greenColorSlider.value = 0;
    self.blueColorSlider.value = 0;

    
    [self updateViewColor];
}

- (void)updateViewColor {
    
    if (isRGB) {
       self.colorView.backgroundColor = [UIColor colorWithRed:self.redColorSlider.value green:self.greenColorSlider.value blue:self.blueColorSlider.value alpha:1];
    } else {
        self.colorView.backgroundColor = [UIColor colorWithHue:self.redColorSlider.value saturation:self.greenColorSlider.value brightness:self.blueColorSlider.value alpha:1];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onSegmentedControlChanged:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == ColorSchemeHSV) {
        isRGB = NO;
    } else {
        isRGB = YES;
    }
    
    [self updateViewColor];
    
}

- (IBAction)onValueChanged:(UISlider *)sender {
    [self updateViewColor];
}

- (IBAction)onSwitch:(UISwitch *)sender {
    self.redColorSlider.enabled = sender.isOn;
    self.greenColorSlider.enabled = sender.isOn;
    self.blueColorSlider.enabled = sender.isOn;
}

@end
