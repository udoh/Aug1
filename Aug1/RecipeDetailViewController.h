//
//  RecipeDetailViewController.h
//  Aug1
//
//  Created by Udo Hoppenworth on 7/31/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Recipe;

@interface RecipeDetailViewController : UIViewController
{
    __weak IBOutlet UILabel *recipeTitleLabel;
    __weak IBOutlet UILabel *authorLabel;
    __weak IBOutlet UIImageView *recipeImage;
    __weak IBOutlet UILabel *ratingLabel;
    __weak IBOutlet UILabel *yieldLabel;
    __weak IBOutlet UILabel *levelLabel;
    __weak IBOutlet UILabel *totalTimeLabel;
    __weak IBOutlet UILabel *prepTimeLabel;
    __weak IBOutlet UILabel *inactiveTimeLabel;
    __weak IBOutlet UILabel *cookTimeLabel;
}

@property (nonatomic, strong) Recipe *recipe;

@end
