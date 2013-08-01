//
//  RecipeList.m
//  Aug1
//
//  Created by Udo Hoppenworth on 7/31/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "RecipeList.h"
#import "Recipe.h"

@implementation RecipeList

- (id)init
{
    self = [super init];
    if (self) {
        self.allRecipes = [[NSMutableArray alloc] init];
    }
    
    return self;
}


// sharedList is a singleton
+ (RecipeList *)sharedList
{
    static RecipeList *sharedList = nil;
    if (!sharedList) {
        sharedList = [[super allocWithZone:nil] init];
    }
    
    return sharedList;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedList];
}

- (void)removeRecipe:(Recipe *)r
{
    [self.allRecipes removeObjectIdenticalTo:r];
}


@end
