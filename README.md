# NSString-Picture
- 一个NSString的分类+自定义NSTextAttachment,基于正则表达式 返回一个带有图片的NSAttributedString


##仅仅只有一个方法 参数是正则表达式

```objc
- (NSAttributedString *)pictureAttributedStringWithPattern:(NSString *)pattern;
```

##DNOTextAttachment继承的是NSTextAttachment 
```objc
// 内部重新计算了图片的size 
- (CGRect)attachmentBoundsForTextContainer:(NSTextContainer *)textContainer proposedLineFragment:(CGRect)lineFrag glyphPosition:(CGPoint)position characterIndex:(NSUInteger)charIndex
```

##目前仅支持图片是大概是方正的 太过宽, 太过高没有进行测试

