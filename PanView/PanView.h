//
//  PanView.h
//  PanView
//
//  Created by aybek can kaya on 1/28/15.
//  Copyright (c) 2015 aybek can kaya. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PanView;

@protocol PanViewDelegate <NSObject>

-(void)panView:(PanView *)view movedToPoint:(CGPoint) finalPoint;

-(BOOL)panView:(PanView *)view shouldMoveToLocation:(CGPoint ) pointWillMove;

@end

@interface PanView : UIView
{
    
}

@property(nonatomic,weak) id<PanViewDelegate> delegate;

@property(nonatomic,assign) BOOL verticalPanEnabled;
@property(nonatomic,assign) BOOL horizontalPanEnabled;



@end
