//
//  RecipesViewController.m
//  Aug1
//
//  Created by Udo Hoppenworth on 7/31/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "RecipesViewController.h"
#import "RecipeDetailViewController.h"
#import "DemoRecipeList.h"
#import "Recipe.h"

@implementation RecipesViewController

#pragma mark - Initializers

// designated initializer
- (id)init
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        [self setup];
    }
    
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

- (void)awakeFromNib
{
    [self setup];
}

- (void)setup
{
    // any additional necessary initialization goes here
    UINavigationItem *n = self.navigationItem;
    [n setTitle:@"Recipes"];
    
    UIBarButtonItem *bbi = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                         target:self
                                                                         action:@selector(addNewRecipe:)];
    [self.navigationItem setRightBarButtonItem:bbi];
    
    [self.navigationItem setLeftBarButtonItem:self.editButtonItem];
}

#pragma mark - UITableView datasource and delegate methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[DemoRecipeList sharedList] allRecipes] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Recipe"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Recipe"];
    }
    
    Recipe *r = [[[DemoRecipeList sharedList] allRecipes] objectAtIndex:indexPath.row];
    
    cell.textLabel.text = r.recipeName;
    cell.detailTextLabel.text = r.authorName;
    cell.imageView.image = r.recipeImage;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        RecipeList *rl = [DemoRecipeList sharedList];
        NSArray *recipes = [rl allRecipes];
        Recipe *r = recipes[indexPath.row];
        [rl removeRecipe:r];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    RecipeDetailViewController *recipeDetailVC = [[RecipeDetailViewController alloc] init];
    
    NSArray *recipes = [[DemoRecipeList sharedList] allRecipes];
    Recipe *selectedRecipe = recipes[indexPath.row];
    [recipeDetailVC setRecipe:selectedRecipe];
    
    [self.navigationController pushViewController:recipeDetailVC animated:YES];
}

- (IBAction)addNewRecipe:(id)sender
{
    Recipe *r = [[Recipe alloc] init];
    [[[DemoRecipeList sharedList] allRecipes] addObject:r];
    
    int lastRow = [[[DemoRecipeList sharedList] allRecipes] indexOfObject:r];
    NSIndexPath *ip = [NSIndexPath indexPathForRow:lastRow inSection:0];
    
    [self.tableView insertRowsAtIndexPaths:@[ip] withRowAnimation:UITableViewRowAnimationTop];
}

@end
