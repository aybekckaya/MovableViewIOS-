//
//  ViewController.m
//  PanView
//
//  Created by aybek can kaya on 1/28/15.
//  Copyright (c) 2015 aybek can kaya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.viewPan.delegate =self;
   // self.viewPan.verticalPanEnabled = NO;
    
}

-(BOOL)panView:(PanView *)view shouldMoveToLocation:(CGPoint)pointWillMove
{
    if(pointWillMove.x <150)
    {
        return NO;
    }
    
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
