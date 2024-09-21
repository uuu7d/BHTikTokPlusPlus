#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BHIManager: NSObject
+ (BOOL)hideAds;
+ (BOOL)downloadButton;
+ (BOOL)removeWatermark;
+ (BOOL)hideElementButton;
+ (BOOL)uploadRegion;
+ (BOOL)autoPlay;
+ (BOOL)progressBar;
+ (BOOL)transparentCommnet;
+ (BOOL)showUsername;
+ (BOOL)disablePullToRefresh;
+ (BOOL)disableUnsensitive;
+ (BOOL)disableWarnings;
+ (BOOL)disableLive;
+ (BOOL)skipRecommendations;
+ (BOOL)likeConfirmation;
+ (BOOL)likeCommentConfirmation;
+ (BOOL)dislikeCommentConfirmation;
+ (BOOL)followConfirmation;
+ (BOOL)profileSave;
+ (BOOL)profileCopy;
+ (BOOL)profileVideoCount;
+ (BOOL)videoLikeCount;
+ (BOOL)videoUploadDate;
+ (BOOL)alwaysOpenSafari;
+ (BOOL)regionChangingEnabled;
+ (NSDictionary *)selectedRegion;
+ (BOOL)fakeChangesEnabled;
+ (BOOL)fakeVerified;
+ (BOOL)uploadHD;
+ (BOOL)extendedBio;
+ (BOOL)extendedComment;
+ (BOOL)appLock;
+ (void)showSaveVC:(id)item;
+ (void)cleanCache;
+ (BOOL)isEmpty:(NSURL *)url;
+ (NSString *)getDownloadingPersent:(float)per;
@end