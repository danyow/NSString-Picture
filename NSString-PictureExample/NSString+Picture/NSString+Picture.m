//
//  NSString+Picture.m
//  NSString-PictureExample
//
//  Created by Danyow.Ed on 2016/3/28.
//  Copyright © 2016年 Danyow.Ed. All rights reserved.
//

#import "NSString+Picture.h"
#import "DNOTextAttachment.h"

@implementation NSString (Picture)

- (NSAttributedString *)pictureAttributedStringWithPattern:(NSString *)pattern
{
    NSMutableAttributedString *contentAttStr = [[NSMutableAttributedString alloc] initWithString:self];
    NSError *error = nil;
    NSRegularExpression *regularExpression = [NSRegularExpression regularExpressionWithPattern:pattern options:0 error:&error];
 
    if (error) {
        NSLog(@"%@",error);
        return contentAttStr;
    }
    
    NSArray *results = [regularExpression matchesInString:self options:0 range:NSMakeRange(0, self.length)];
    
    // 每个需要修改的字符可能导致的偏移量
    NSInteger offset = 0;
    for (NSTextCheckingResult *result in results) {
        
        NSString *imageNamed = [self substringWithRange:result.range];
        
        DNOTextAttachment *attachment = [[DNOTextAttachment alloc] init];
        
        attachment.image = [UIImage imageNamed:imageNamed];
        
        NSAttributedString *imageAttStr = [NSAttributedString attributedStringWithAttachment:attachment];
        
        NSRange range = result.range;
        
        range.location -= offset;
        
        [contentAttStr replaceCharactersInRange:range withAttributedString:imageAttStr];
        
        offset += range.length - 1;
    }
    
    return contentAttStr;
}

@end


