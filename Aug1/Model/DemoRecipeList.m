//
//  DemoRecipeList.m
//  Aug1
//
//  Created by Udo Hoppenworth on 7/31/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "DemoRecipeList.h"
#import "Recipe.h"

@implementation DemoRecipeList

- (id)init{
    
    self = [super init];
    if (self) {
        [self setup];
    }
    
    return self;
}

- (void)setup
{
    // create 5 demo recipes and add them to the list
    
    // recipe 1
    Recipe *r = [[Recipe alloc] init];
    r.recipeName = @"Perfectly Grilled Steak";
    r.authorName = @"Bobby Flay";
    r.prepTime = 15 * 60;
    r.inactiveTime = 0;
    r.cookTime = 15 * 60;
    r.rating = 4.0;
    r.numberOfServings = 4.0;
    r.difficultyLevel = Easy;
    
    r.ingredients = @"4	1 1/4-to-1 1/2-inch-thick boneless rib-eye or New York strip steaks (about 12 ounces each) or filets mignons (8 to 10 ounces each), trimmed\n2 tablespoons canola or extra-virgin olive oil\nKosher salt and freshly ground pepper";
    
    r.directions = @"About 20 minutes before grilling, remove the steaks from the refrigerator and let sit, covered, at room temperature.\n\nHeat your grill to high. Brush the steaks on both sides with oil and season liberally with salt and pepper. Place the steaks on the grill and cook until golden brown and slightly charred, 4 to 5 minutes. Turn the steaks over and continue to grill 3 to 5 minutes for medium-rare (an internal temperature of 135 degrees F), 5 to 7 minutes for medium (140 degrees F) or 8 to 10 minutes for medium-well (150 degrees F).\n\nTransfer the steaks to a cutting board or platter, tent loosely with foil and let rest 5 minutes before slicing.";
    r.recipeImage = [UIImage imageNamed:@"steak.jpg"];
    r.photographer = @"Steve Giralt";
    
    [self.allRecipes addObject:r];
    r = nil;
    
    // recipe 2
    r = [[Recipe alloc] init];
    r.recipeName = @"Steak Fajitas with Chimichurri";
    r.authorName = @"Sunny Anderson";
    r.prepTime = 20 * 60;
    r.inactiveTime = 70 * 60;
    r.cookTime = 25 * 60;
    r.rating = 5.0;
    r.numberOfServings = 4.0;
    r.difficultyLevel = Easy;
    
    r.ingredients = @"1 bunch fresh parsley\n1 bunch fresh cilantro\n1 to 2 cloves garlic\n1 large red onion, halved and sliced\nKosher salt and freshly ground pepper\n2 tablespoons red wine vinegar\n3 tablespoons lemon juice\n1/2 cup plus 1 tablespoon extra-virgin olive oil\n1 pound chuck or top round steak (London broil)\n3 poblano peppers, seeded and cut into strips\n1/4 cup lager beer\n8 8-inch flour tortillas\nLime wedges, for serving (optional)";

    r.directions = @"Combine the parsley and cilantro (leaves and stems), garlic, half of the sliced onion, 1 tablespoon salt, 1 teaspoon pepper, vinegar, 2 tablespoons lemon juice and 1/2 cup olive oil in a food processor; blend into a thick and smooth chimichurri sauce. Pierce both sides of the steak with a fork several times; place in a resealable plastic bag and add half of the sauce. Seal the bag and turn to coat the steak; refrigerate for at least 1 hour. Cover and reserve the remaining sauce.\n\nPreheat a grill to medium-high. Remove the steak from the bag (discard the bag of sauce); season with salt and pepper and grill until medium-rare, about 6 minutes per side. Let rest, loosely covered with foil, for 10 minutes.\n\nMeanwhile, heat the remaining 1 tablespoon olive oil in a large skillet over medium-high heat. Add the peppers and the remaining sliced onion half; season with salt and pepper. Saute until the vegetables are softened and caramelized around the edges, about 8 minutes. Add the beer, cover and cook until the peppers are tender, about 5 minutes.\n\nWarm the tortillas on the grill. Thinly slice the steak on the bias; divide among the tortillas along with the peppers and onions. Thin the reserved chimichurri sauce with the remaining 1 tablespoon lemon juice; drizzle over the fajitas. Serve with lime wedges, if desired.";

    r.recipeImage = [UIImage imageNamed:@"fajitas.jpg"];
    r.photographer = @"Kana Okada";
    
    [self.allRecipes addObject:r];
    r = nil;
    
    // recipe 3
    r = [[Recipe alloc] init];
    r.recipeName = @"Roasted-Pepper Pasta Salad";
    r.authorName = @"Foodnetwork Magazine";
    r.prepTime = 10 * 60;
    r.inactiveTime = 0 * 60;
    r.cookTime = 20 * 60;
    r.rating = 4.0;
    r.numberOfServings = 4.0;
    r.difficultyLevel = Advanced;
    
    r.ingredients = @"Kosher salt\n12	ounces mezzi rigatoni or other short tube-shaped pasta\n2	bell peppers (red and/or yellow), halved, stemmed and seeded\n6	cloves garlic, unpeeled\n1/4	cup almonds\n1/3	cup extra-virgin olive oil\n1	lemon\n8	ounces bocconcini (small mozzarella balls)\n1	bunch fresh basil, leaves torn\nFreshly ground pepper";
    
    r.directions = @"Preheat the broiler. Bring a pot of salted water to a boil. Add the pasta and cook as the label directs. Drain and rinse under cold water to stop the cooking. Shake off the excess water.\n\nMeanwhile, place the bell peppers cut-side down on a foil-lined broiler pan, add the garlic and broil until charred, 7 to 8 minutes. Transfer the peppers to a bowl, cover and set aside about 5 minutes.\n\nHeat a dry skillet over medium-high heat. Add the almonds and toast, shaking the pan, 4 to 5 minutes. Let cool, then coarsely chop.\n\nSqueeze the garlic from its skin onto a cutting board. Add 1/2 teaspoon salt; mince and mash the garlic into a paste with a large knife. Peel the roasted peppers and slice into strips; transfer to a large bowl. Add the garlic paste and drizzle with the olive oil. Finely grate about 1 teaspoon lemon zest into the bowl and squeeze in all of the lemon juice. Add the bocconcini, basil, almonds, pasta, 1 teaspoon salt, and pepper to taste; toss.\n\nPer serving: Calories 731; Fat 37 g (Saturated 11 g); Cholesterol 41 mg; Sodium 845 mg; Carbohydrate 73 g; Fiber 6 g; Protein 26 g";
    
    r.recipeImage = [UIImage imageNamed:@"pasta.jpg"];
    r.photographer = @"Antonis Achilleos";
    
    [self.allRecipes addObject:r];
    r = nil;
    
}

@end
