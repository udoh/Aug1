//
//  RecipeDetailViewController.m
//  Aug1
//
//  Created by Udo Hoppenworth on 7/31/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "RecipeDetailViewController.h"
#import "IngredientsViewController.h"
#import "DirectionsViewController.h"
#import "ImageViewController.h"
#import "Recipe.h"

@interface RecipeDetailViewController ()

@end

@implementation RecipeDetailViewController

- (void)setRecipe:(Recipe *)r
{
    _recipe = r;
    [self.navigationItem setTitle:_recipe.recipeName];
}

- (IBAction)showIngredients:(UIButton *)sender
{
    IngredientsViewController *ivc = [[IngredientsViewController alloc] init];
    [ivc setRecipe:self.recipe];
    
    [self.navigationController pushViewController:ivc animated:YES];
}

- (IBAction)showDirections:(UIButton *)sender
{
    DirectionsViewController *dvc = [[DirectionsViewController alloc] init];
    [dvc setRecipe:self.recipe];
    
    [self.navigationController pushViewController:dvc animated:YES];
}

- (IBAction)showImage:(UIButton *)sender
{
    ImageViewController *imgvc = [[ImageViewController alloc] init];
    [imgvc setRecipe:self.recipe];
    
    [self.navigationController pushViewController:imgvc animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0]];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    

    NSString *level;
    
    switch (self.recipe.difficultyLevel) {
        case 0:
            level = @"Easy";
            break;
            
        case 1:
            level = @"Intermediate";
            
        case 2:
            level = @"Advanced";
            
        case 3:
            level = @"Professional";
            
        default:
            break;
    }
    
    
    recipeTitleLabel.text = self.recipe.recipeName;
    authorLabel.text = [NSString stringWithFormat:@"By: %@", self.recipe.authorName ];
    recipeImage.image = self.recipe.recipeImage;
    totalTimeLabel.text = [self stringFromTimeInterval:self.recipe.totalTime];
    prepTimeLabel.text = [self stringFromTimeInterval:self.recipe.prepTime];
    cookTimeLabel.text = [self stringFromTimeInterval:self.recipe.cookTime];
    yieldLabel.text = [NSString stringWithFormat:@"For %g servings (Level: %@)", self.recipe.numberOfServings, level];
    ratingView.rating = self.recipe.rating;
}

- (NSString *)stringFromTimeInterval:(NSTimeInterval)interval {
    NSInteger ti = (NSInteger)interval;
    //NSInteger seconds = ti % 60;
    NSInteger minutes = (ti / 60) % 60;
    NSInteger hours = (ti / 3600);
    NSString *result = (hours > 0) ? ([NSString stringWithFormat:@"%ih %im", hours, minutes]) : [NSString stringWithFormat:@"%im", minutes];
    
    return result;
}

@end
