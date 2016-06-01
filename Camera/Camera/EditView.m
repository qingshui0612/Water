//
//  EditView.m
//  Camera
//
//  Created by 刘硕 on 16/5/27.
//  Copyright © 2016年 刘硕. All rights reserved.
//

#import "EditView.h"
@interface EditView ()
@property (nonatomic,strong) UIScrollView *scrollView;

@end
@implementation EditView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        float width = self.frame.size.width;
        float height = self.frame.size.height;
        
        _scrollView = [[UIScrollView alloc]initWithFrame:self.bounds];
        _scrollView.backgroundColor = [UIColor blueColor];
        [self addSubview:_scrollView];
        
        float itemWidth = height - 80;
        NSArray *titleArr = @[@"亮度",@"对比度",@"色温",@"饱和度",@"色调"];
        for (int i = 0; i < 5; i++) {
            UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40 + (itemWidth + 40) * i, 15, itemWidth, 20)];
            label.text = titleArr[i];
            label.textColor = [UIColor whiteColor];
            label.textAlignment = NSTextAlignmentCenter;
            [_scrollView addSubview:label];
            
            UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(40 + (itemWidth + 40) * i, 40, itemWidth, itemWidth)];
            imageView.backgroundColor = [UIColor lightGrayColor];
            [_scrollView addSubview:imageView];
        }
        _scrollView.contentSize = CGSizeMake(itemWidth * 5 + 40 * 6, height);
        
        UISlider *slider = [[UISlider alloc]initWithFrame:CGRectMake(40, height - 30, width - 80, 20)];
        [self addSubview:slider];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
