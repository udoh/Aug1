//
//  Recipe.m
//  Aug1
//
//  Created by Udo Hoppenworth on 7/31/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "Recipe.h"
#import <QuartzCore/QuartzCore.h>

@implementation Recipe

- (id)init
{
    self = [super init];
    if (self) {
        _recipeName = @"Default Recipe";
        _authorName = @"Default Author";
    }
    
    return self;
}

- (NSTimeInterval)totalTime
{
    return self.prepTime + self.cookTime + self.inactiveTime;
}

- (UIImage *)recipeThumbnail
{
    UIImage *thumbnail = nil;
    
    // use lazy instantiation to create the thumbnail when first accessed
    // only set thumbnail if _recipeImage exists; otherwise return nil
    
    if (self.recipeImage) {
        
        if (!_recipeThumbnail) {
            
            CGSize size = self.recipeImage.size;
            CGSize croppedSize;
            CGFloat ratio = 64.0;
            CGFloat offsetX = 0.0;
            CGFloat offsetY = 0.0;
            
            // check the size of the image, we want to make it
            // a square with sides the size of the smallest dimension
            if (size.width > size.height) {
                offsetX = (size.height - size.width) / 2;
                croppedSize = CGSizeMake(size.height, size.height);
            } else {
                offsetY = (size.width - size.height) / 2;
                croppedSize = CGSizeMake(size.width, size.width);
            }
            
            // Crop the image before resize
            CGRect clippedRect = CGRectMake(offsetX * -1, offsetY * -1, croppedSize.width, croppedSize.height);
            CGImageRef imageRef = CGImageCreateWithImageInRect([self.recipeImage CGImage], clippedRect);
            // Done cropping
            
            // Resize the image
            CGRect rect = CGRectMake(0.0, 0.0, ratio, ratio);
            
            UIGraphicsBeginImageContext(rect.size);
            [[UIImage imageWithCGImage:imageRef] drawInRect:rect];
            thumbnail = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            // Done Resizing
        }
    }
    
    return thumbnail;
}

@end
