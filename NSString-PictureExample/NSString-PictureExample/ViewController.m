//
//  ViewController.m
//  NSString-PictureExample
//
//  Created by Danyow.Ed on 2016/3/28.
//  Copyright © 2016年 Danyow.Ed. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Picture.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *pictureLabel;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    /** 
        m_2_100你好m_3_100漂亮m_4_100真的m_5_100没有m_7_100骗你m_8_100你要m_9_100是不m_10_100信就
     */
    self.pictureLabel.attributedText = [self.pictureLabel.text pictureAttributedStringWithPattern:@"m_\\d{1,3}_100"];
    
}

@end
