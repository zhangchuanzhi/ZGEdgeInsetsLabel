//
//  ViewController.m
//  ZGEdgeInsetsLabel
//
//  Created by offcn_zcz32036 on 2017/12/12.
//  Copyright © 2017年 cn. All rights reserved.
//

#import "ViewController.h"
#import "ZGEdgeInsetsLabel.h"
@interface ViewController ()
@property(nonatomic,strong)ZGEdgeInsetsLabel*label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label=[[ZGEdgeInsetsLabel alloc]initWithFrame:CGRectMake(90, 90, 200, 100)];
    [self.view addSubview:self.label];
    self.label.text=@"人之初，性本善，我最喜欢吃鸡蛋。人之初，性本善，我最喜欢吃鸡蛋。人之初，性本善，我最喜欢吃鸡蛋。人之初，性本善，我最喜欢吃鸡蛋。";
    self.label.numberOfLines=0;
    self.label.backgroundColor=[UIColor orangeColor];
    // 3秒后改变contentInset
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.label.contentInset = UIEdgeInsetsMake(20, 50, 10, 20);
        self.label.text = @"人之初，性本善，我最喜欢吃鸡";
    });
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.label.contentInset=UIEdgeInsetsMake(0, 80, 0, 20);
    self.label.text=@"因缺思厅";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
