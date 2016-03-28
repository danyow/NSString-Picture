//
//  DNOTextAttachment.m
//  NSString-PictureExample
//
//  Created by Danyow.Ed on 2016/3/28.
//  Copyright © 2016年 Danyow.Ed. All rights reserved.
//

#import "DNOTextAttachment.h"

@implementation DNOTextAttachment

- (CGRect)attachmentBoundsForTextContainer:(NSTextContainer *)textContainer proposedLineFragment:(CGRect)lineFrag glyphPosition:(CGPoint)position characterIndex:(NSUInteger)charIndex
{
    CGFloat height = lineFrag.size.height;
    return CGRectMake(0, -height * 0.2, height, height);
}

@end
