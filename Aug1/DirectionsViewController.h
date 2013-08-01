//
//  DirectionsViewController.h
//  Aug1
//
//  Created by Udo Hoppenworth on 7/31/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Recipe;

@interface DirectionsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *recipeName;
@property (weak, nonatomic) IBOutlet UITextView *directionsText;

@property (strong, nonatomic) Recipe *recipe;

@end
