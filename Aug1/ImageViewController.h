//
//  ImageViewController.h
//  Aug1
//
//  Created by Udo Hoppenworth on 8/1/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Recipe;

@interface ImageViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) Recipe *recipe;


- (IBAction)takePicture:(UIBarButtonItem *)sender;


@end
