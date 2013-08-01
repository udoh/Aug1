//
//  IngredientsViewController.m
//  Aug1
//
//  Created by Udo Hoppenworth on 7/31/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "IngredientsViewController.h"
#import "Recipe.h"

@interface IngredientsViewController ()

@end

@implementation IngredientsViewController

- (void)viewWillAppear:(BOOL)animated
{
    self.textView.text = self.recipe.ingredients;
    self.recipeName.text = self.recipe.recipeName;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0]];
}

@end
