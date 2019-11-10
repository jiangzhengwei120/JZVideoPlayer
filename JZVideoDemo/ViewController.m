//
//  ViewController.m
//  JZVideoDemo
//
//  Created by VD on 2019/11/8.
//  Copyright © 2019 VD. All rights reserved.
//

#define SourceURL0 [NSURL URLWithString:@"https://nie.v.netease.com/r/video/20190810/39d108cb-3a65-4036-a574-48dff2a8764e.mp4"]
#import "ViewController.h"
#import "SJVideoPlayer.h"
#import <Masonry.h>
@interface ViewController ()
@property (nonatomic,strong) SJVideoPlayer * player;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
        
    _player = SJVideoPlayer.player;
    #if __has_include(<IJKMediaFrameworkWithSSL/IJKMediaFrameworkWithSSL.h>)
        _player.playbackController = SJIJKMediaPlaybackController.new;
    #endif
    _player.URLAsset = [SJVideoPlayerURLAsset.alloc initWithURL:SourceURL0];
    _player.view.backgroundColor = UIColor.blackColor;
    [self.view addSubview:_player.view];
    [_player.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(100);
        make.left.right.offset(0);
        make.height.equalTo(self.player.view.mas_width).multipliedBy(9/16.0);
    }];
//    [_player setCanSeekToTime:^BOOL(__kindof SJBaseVideoPlayer * _Nonnull player) {
//        
//        
//        
//        
//        return NO;
//    }];
    
   
    // Do any additional setup after loading the view.
}


@end
