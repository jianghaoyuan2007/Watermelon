//
//  WatermelonViewController.m
//  Watermelon
//
//  Created by Stephen Chiang on 16/06/2017.
//
//

#import "WatermelonViewController.h"
#import <Masonry/Masonry.h>

@interface WatermelonViewController ()

@end

@implementation WatermelonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    
    UIButton *button = [UIButton buttonWithType: UIButtonTypeCustom];
    
    button.backgroundColor = [UIColor whiteColor];
    
    [button setTitle:@"Watermelon" forState: UIControlStateNormal];
    
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(90, 30));
        make.center.equalTo(self.view);
    }];
    
}

- (void)buttonTapped: (UIButton *)button {
    
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
