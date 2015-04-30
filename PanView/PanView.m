//
//  PanView.m
//  PanView
//
//  Created by aybek can kaya on 1/28/15.
//  Copyright (c) 2015 aybek can kaya. All rights reserved.
//

#import "PanView.h"

@implementation PanView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)awakeFromNib
{
    self.verticalPanEnabled = YES;
    self.horizontalPanEnabled = YES;
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self];
    
    NSLog(@"Touch Start: %@", NSStringFromCGPoint(touchPoint));
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    UIView * topView = [[[[UIApplication sharedApplication] keyWindow] subviews] lastObject];
    CGPoint touchPoint = [touch locationInView:topView];
    
    NSLog(@"Touch Moved: %@", NSStringFromCGPoint(touchPoint));
   
    CGPoint finalPoint= touchPoint ;
    if(self.verticalPanEnabled == NO)
    {
        finalPoint.y =self.center.y;
    }
    
    if(self.horizontalPanEnabled == NO)
    {
        finalPoint.x = self.center.x;
    }
    
    BOOL shouldMove = YES;
    if([self.delegate respondsToSelector:@selector(panView:shouldMoveToLocation:)])
    {
        shouldMove = [self.delegate panView:self shouldMoveToLocation:finalPoint];
    }
    
    if(shouldMove)
    {
          self.center = finalPoint;
        
           if([self.delegate respondsToSelector:@selector(panView:movedToPoint:)])
           {
               [self.delegate panView:self movedToPoint:finalPoint];
           }
        
    }
  
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}



@end
