//
//  ViewController.h
//  PanView
//
//  Created by aybek can kaya on 1/28/15.
//  Copyright (c) 2015 aybek can kaya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PanView.h"

@interface ViewController : UIViewController<PanViewDelegate>
{
    
}


@property (weak, nonatomic) IBOutlet PanView *viewPan;



@end

