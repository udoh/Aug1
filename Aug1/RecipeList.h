//
//  RecipeList.h
//  Aug1
//
//  Created by Udo Hoppenworth on 7/31/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Recipe;

@interface RecipeList : NSObject


@property (nonatomic, strong) NSMutableArray *allRecipes;

+ (RecipeList *) sharedList;
- (void)removeRecipe:(Recipe *)r;

@end
