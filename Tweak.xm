#import <UIKit/UIKit.h>

@interface SBIconView : UIView

-(void)setLabelHidden:(BOOL)hidden;

@end

%hook SBIconView

-(void)setLabelHidden:(BOOL)hidden
{
	hidden =  YES;
	%orig;
}

%end