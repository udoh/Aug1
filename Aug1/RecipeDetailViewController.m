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
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0]];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    recipeTitleLabel.text = self.recipe.recipeName;
    authorLabel.text = [NSString stringWithFormat:@"By: %@", self.recipe.authorName ];
    recipeImage.image = self.recipe.recipeImage;
    totalTimeLabel.text = [NSString stringWithFormat:@"%gm",self.recipe.totalTime/60];
    prepTimeLabel.text = [NSString stringWithFormat:@"%gm", self.recipe.prepTime/60];
    inactiveTimeLabel.text = [NSString stringWithFormat:@"%gm", self.recipe.inactiveTime/60];
    cookTimeLabel.text = [NSString stringWithFormat:@"%gm", self.recipe.cookTime/60];
    levelLabel.text = [NSString stringWithFormat:@"%d", self.recipe.difficultyLevel];

}

@end
