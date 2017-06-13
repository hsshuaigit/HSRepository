//
//  ViewController.m
//  danmuDemo
//
//  Created by 黄帅 on 2017/6/13.
//  Copyright © 2017年 黄帅. All rights reserved.
//

#import "ViewController.h"
#import "SRVideoPlayer.h"

@interface ViewController ()
@property(nonatomic,strong)SRVideoPlayer *player;
@property(nonatomic,strong)UIButton *playBtn;
@property(nonatomic,strong)UIImageView *imageView;

@end

@implementation ViewController
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [self.player.renderer stop];
    [self.player.danmuTimer invalidate];
    //测试定时器
    [self.player.timer invalidate];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self setUpView];
}
-(void)setUpView{
    _imageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 200)];
    _playBtn=[[UIButton alloc]initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width-100)/2, 50, 100, 100)];
    [_playBtn setBackgroundImage:[UIImage imageNamed:@"playIcon"] forState:UIControlStateNormal];
    [_playBtn addTarget:self action:@selector(playBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    [_imageView setUserInteractionEnabled:YES];
    [_imageView addSubview:_playBtn];
    [self.view addSubview:_imageView];
}
-(void)playBtnClicked{
    _playBtn.hidden=YES;
    self.player = [SRVideoPlayer playerWithVideoURL:[NSURL URLWithString:@"http://video.qguiyang.com/2017/06/07/4fr2Xlf_1496807215465_qoTDT49_1.mp4"] playerView:_imageView playerSuperView:_imageView.superview];
    self.player.url=nil;
    self.player.param=nil;
    self.player.playerEndAction = SRVideoPlayerEndActionLoop;
    [self.player play];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
