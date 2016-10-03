//Include our header file(s)
#import <UIKit/UIKit.h>

//Initialize the interface to interact with
@interface SBIconView : UIView

//This is the method we need to hook
-(void)setLabelHidden:(BOOL)hidden;

@end

//Hook into 'SBIconView'
%hook SBIconView

-(void)setLabelHidden:(BOOL)hidden
{
	//Set the hidden boolean variable to true
	hidden =  YES;

	//Call %orig to let the method continue to work its magic
	%orig;
}

%end