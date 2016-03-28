//
//  NSString+Picture.h
//  NSString-PictureExample
//
//  Created by Danyow.Ed on 2016/3/28.
//  Copyright © 2016年 Danyow.Ed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (Picture)


/** pattern 就是指你的图片的名称的正则表达式 */
- (NSAttributedString *)pictureAttributedStringWithPattern:(NSString *)pattern;

@end
