//
//  EditPicViewController.m
//  编辑图片
//
//  Created by 刘硕 on 16/5/25.
//  Copyright © 2016年 刘硕. All rights reserved.
//

#import "EditPicViewController.h"
#import "FilterView.h"
#import "EditView.h"
#import "MoreView.h"
@interface EditPicViewController ()
@property (nonatomic,strong) FilterView *filterView;
@property (nonatomic,strong) EditView *editView;
@property (nonatomic,strong) MoreView *moreView;
@property (weak, nonatomic) IBOutlet UIView *bgView;
@end

@implementation EditPicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self createUI];
}
- (void)createUI{
    if (!_moreView) {
        _moreView = [[MoreView alloc]initWithFrame:_bgView.bounds];
        [_bgView addSubview:_moreView];
    }
    
    if (!_editView) {
        _editView = [[EditView alloc]initWithFrame:_bgView.bounds];
        [_bgView addSubview:_editView];
    }
    
    if (!_filterView) {
        _filterView = [[FilterView alloc]initWithFrame:_bgView.bounds];
        [_bgView addSubview:_filterView];
    }
    
}
- (IBAction)filterClick:(UIButton *)sender {
    [_bgView bringSubviewToFront:_filterView];
}
- (IBAction)editCllick:(UIButton *)sender {
    [_bgView bringSubviewToFront:_editView];
}
- (IBAction)moreClick:(UIButton *)sender {
    [_bgView bringSubviewToFront:_moreView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
