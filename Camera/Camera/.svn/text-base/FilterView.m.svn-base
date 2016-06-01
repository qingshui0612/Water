//
//  FilterView.m
//  Camera
//
//  Created by 刘硕 on 16/5/27.
//  Copyright © 2016年 刘硕. All rights reserved.
//

#import "FilterView.h"

@interface FilterView ()
@property (nonatomic,strong) UIScrollView *scrollView;

@end

@implementation FilterView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        float width = self.frame.size.width;
        float height = self.frame.size.height;
        
        _scrollView = [[UIScrollView alloc]initWithFrame:self.bounds];
        _scrollView.backgroundColor = [UIColor redColor];
        [self addSubview:_scrollView];
    
        float itemWidth = height - 20;
        for (int i = 0; i < 5; i++) {
            UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(10 + (itemWidth + 10) * i, 10, itemWidth, itemWidth)];
            imageView.backgroundColor = [UIColor lightGrayColor];
            [_scrollView addSubview:imageView];
            
            UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, itemWidth - 20, itemWidth, 20)];
            label.text = [NSString stringWithFormat:@"滤镜样式%d",i];
            label.backgroundColor = [UIColor whiteColor];
            label.textAlignment = NSTextAlignmentCenter;
            [imageView addSubview:label];
        }
        _scrollView.contentSize = CGSizeMake(itemWidth * 5 + 10 * 6, height);
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
