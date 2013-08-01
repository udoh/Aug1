//
//  DirectionsViewController.m
//  Aug1
//
//  Created by Udo Hoppenworth on 7/31/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "DirectionsViewController.h"
#import "Recipe.h"

@interface DirectionsViewController ()

@end

@implementation DirectionsViewController

- (void)viewWillAppear:(BOOL)animated
{
    self.recipeName.text = self.recipe.recipeName;
    self.directionsText.text = self.recipe.directions;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0]];
}

@end
