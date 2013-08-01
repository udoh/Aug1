//
//  Recipe.h
//  Aug1
//
//  Created by Udo Hoppenworth on 7/31/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Easy, 
    Intermediate,
    Advanced,
    Professional
} Difficulty;


@interface Recipe : NSObject

@property (nonatomic, copy) NSString *recipeName;
@property (nonatomic, copy) NSString *authorName;
@property (nonatomic) NSTimeInterval prepTime;
@property (nonatomic) NSTimeInterval cookTime;
@property (nonatomic, readonly) NSTimeInterval totalTime;
@property (nonatomic) float rating;
@property (nonatomic) float numberOfServings;
@property (nonatomic) Difficulty difficultyLevel;
@property (nonatomic, copy) NSString *ingredients;
@property (nonatomic, copy) NSString *directions;
@property (nonatomic, strong) UIImage *recipeImage;
@property (nonatomic, strong) UIImage *recipeThumbnail;
@property (nonatomic, strong) NSDate *dateCreated;
@property (nonatomic, copy) NSString *photographer;


@end
