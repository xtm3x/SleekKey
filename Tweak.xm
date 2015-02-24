#import <UIKit/UIKit.h>

%hook UIKBRenderConfig
- (CGFloat)keycapOpacity {
	return 0.0;
}
- (CGFloat)lightLatinKeycapOpacity {
	return 0.0;
}
- (BOOL)lightKeyboard {
	return TRUE:
}
%end