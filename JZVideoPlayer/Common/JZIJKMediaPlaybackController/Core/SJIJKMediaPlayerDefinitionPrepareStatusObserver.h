//
//  SJIJKMediaPlayerDefinitionPrepareStatusObserver.h
//  SJVideoPlayer_Example
//
//  Created by BlueDancer on 2019/10/16.
//  Copyright © 2019 changsanjiang. All rights reserved.
//

#if __has_include(<IJKMediaFramework/IJKMediaFramework.h>)

#import <Foundation/Foundation.h>
@class SJIJKMediaPlayer;

NS_ASSUME_NONNULL_BEGIN
@interface SJIJKMediaPlayerDefinitionPrepareStatusObserver : NSObject
- (instancetype)initWithPlayer:(SJIJKMediaPlayer *)player;
@property (nonatomic, strong, readonly) SJIJKMediaPlayer *player;

@property (nonatomic, copy, nullable) void(^statusDidChangeExeBlock)(SJIJKMediaPlayerDefinitionPrepareStatusObserver *obs);
@end
NS_ASSUME_NONNULL_END

#endif
