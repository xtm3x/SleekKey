#import <UIKit/UIKit.h>

%hook UIKBRenderConfig
- (CGFloat)keycapOpacity {
	return 0.0;
}
-(CGFloat)lightKeycapOpacity {
	return 0.4;
}
- (BOOL)lightKeyboard {
 	return TRUE;
}
-(long long)backdropStyle {
	return 0;
}
%end
%hook UIMorphingLabel
-(void) setTextColor:(id)color {
	%orig([UIColor blackColor]);
}
%end