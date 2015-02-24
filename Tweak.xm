#import <UIKit/UIKit.h>

NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.xtm3x.sleekkey~prefs.plist"];

static CGFloat opac = [dict objectForKey:@"lopacity"] ? [[dict objectForKey:@"lopacity"] floatValue] : 0.0;


%hook UIKBRenderConfig
- (CGFloat)keycapOpacity {
	if ([dict objectForKey:@"enabled"] ? [[dict objectForKey:@"enabled"] boolValue] : TRUE)
	{
		return opac;
	}
	else
	{
		return %orig;
	}
}
- (CGFloat)lightLatinKeycapOpacity {
	if ([dict objectForKey:@"enabled"] ? [[dict objectForKey:@"enabled"] boolValue] : TRUE)
	{
		return opac;
	}
	else
	{
		return %orig;
	}
}
- (BOOL)lightKeyboard {
	if ([dict objectForKey:@"enabled"] ? [[dict objectForKey:@"enabled"] boolValue] : TRUE)
	{
		if ([dict objectForKey:@"woard"] ? [[dict objectForKey:@"woard"] boolValue] : TRUE)
		{
			return TRUE;
		}
		else
		{
			return %orig;
		}
	}
	else
	{
		return %orig;
	}
}
%end