//
//  ViewController.m
//  DZTiles
//
//  Created by Admin on 14/09/14.
//  Copyright (c) 2014 dzamataev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    for (id vc in self.childViewControllers) {
        if ([vc isKindOfClass:[DZTilesViewController class]]) {
            _tilesVC = vc;
        }
    }
    
    NSArray *content = @[
  @{@"title" : @"Pizza", @"image":@"pizza", @"color":@"#ff9500", @"sizeWidth":@"2", @"sizeHeight":@"1",
    @"items" : @[ @{@"name":@"Pepperoni", @"image":@"pizza-pepperoni", @"color":@"#ffd700", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Mexicana", @"image":@"pizza-mexicana", @"color":@"#ffa500", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Vegetarian", @"image":@"pizza-vegeterian", @"color":@"#6dc066", @"sizeWidth":@"1", @"sizeHeight":@"1"} ]
    },
  @{@"title" : @"Iceream", @"image":@"icecream", @"color":@"#f5f5f5", @"sizeWidth":@"2", @"sizeHeight":@"1",
    @"items" : @[ @{@"name":@"Vanilla", @"image":@"icecream-vanilla", @"color":@"#f5f5dc", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Banana", @"image":@"icecream-banana", @"color":@"#ccff00", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Strawberry", @"image":@"icecream-strawberry", @"color":@"#ffefd5", @"sizeWidth":@"1", @"sizeHeight":@"1"} ]
    },
  @{@"title" : @"Coctails", @"image":@"coctails", @"color":@"#f5f5f5", @"sizeWidth":@"2", @"sizeHeight":@"1",
    @"items" : @[ @{@"name":@"Margarita", @"image":@"coctail-margarita", @"color":@"#fa8072", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Long Island", @"image":@"coctail-longisland", @"color":@"#ffa500", @"sizeWidth":@"1", @"sizeHeight":@"2"},
                  @{@"name":@"Cuba Libre", @"image":@"coctail-cubalibre", @"color":@"#b6fcd5", @"sizeWidth":@"1", @"sizeHeight":@"1"} ]
    },
  @{@"title" : @"Pizza", @"image":@"pizza", @"color":@"#ff9500", @"sizeWidth":@"2", @"sizeHeight":@"1",
    @"items" : @[ @{@"name":@"Pepperoni", @"image":@"pizza-pepperoni", @"color":@"#ffd700", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Mexicana", @"image":@"pizza-mexicana", @"color":@"#ffa500", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Vegetarian", @"image":@"pizza-vegeterian", @"color":@"#6dc066", @"sizeWidth":@"1", @"sizeHeight":@"1"} ]
    },
  @{@"title" : @"Iceream", @"image":@"icecream", @"color":@"#f5f5f5", @"sizeWidth":@"2", @"sizeHeight":@"1",
    @"items" : @[ @{@"name":@"Vanilla", @"image":@"icecream-vanilla", @"color":@"#f5f5dc", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Banana", @"image":@"icecream-banana", @"color":@"#ccff00", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Strawberry", @"image":@"icecream-strawberry", @"color":@"#ffefd5", @"sizeWidth":@"1", @"sizeHeight":@"1"} ]
    },
  @{@"title" : @"Coctails", @"image":@"coctails", @"color":@"#f5f5f5", @"sizeWidth":@"2", @"sizeHeight":@"1",
    @"items" : @[ @{@"name":@"Margarita", @"image":@"coctail-margarita", @"color":@"#fa8072", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Long Island", @"image":@"coctail-longisland", @"color":@"#ffa500", @"sizeWidth":@"1", @"sizeHeight":@"2"},
                  @{@"name":@"Cuba Libre", @"image":@"coctail-cubalibre", @"color":@"#b6fcd5", @"sizeWidth":@"1", @"sizeHeight":@"1"} ]
    },
  @{@"title" : @"Pizza", @"image":@"pizza", @"color":@"#ff9500", @"sizeWidth":@"2", @"sizeHeight":@"1",
    @"items" : @[ @{@"name":@"Pepperoni", @"image":@"pizza-pepperoni", @"color":@"#ffd700", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Mexicana", @"image":@"pizza-mexicana", @"color":@"#ffa500", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Vegetarian", @"image":@"pizza-vegeterian", @"color":@"#6dc066", @"sizeWidth":@"1", @"sizeHeight":@"1"} ]
    },
  @{@"title" : @"Iceream", @"image":@"icecream", @"color":@"#f5f5f5", @"sizeWidth":@"2", @"sizeHeight":@"1",
    @"items" : @[ @{@"name":@"Vanilla", @"image":@"icecream-vanilla", @"color":@"#f5f5dc", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Banana", @"image":@"icecream-banana", @"color":@"#ccff00", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Strawberry", @"image":@"icecream-strawberry", @"color":@"#ffefd5", @"sizeWidth":@"1", @"sizeHeight":@"1"} ]
    },
  @{@"title" : @"Coctails", @"image":@"coctails", @"color":@"#f5f5f5", @"sizeWidth":@"2", @"sizeHeight":@"1",
    @"items" : @[ @{@"name":@"Margarita", @"image":@"coctail-margarita", @"color":@"#fa8072", @"sizeWidth":@"1", @"sizeHeight":@"1"},
                  @{@"name":@"Long Island", @"image":@"coctail-longisland", @"color":@"#ffa500", @"sizeWidth":@"1", @"sizeHeight":@"2"},
                  @{@"name":@"Cuba Libre", @"image":@"coctail-cubalibre", @"color":@"#b6fcd5", @"sizeWidth":@"1", @"sizeHeight":@"1"} ]
    }
  ];
    
    self.tilesVC.isMoveTilesEnabled = YES;
    self.tilesVC.moveDelegate = self;
    
    // only one section is possible with existing implementation, but we will leave it for the future updates coming
    NSMutableArray *sections = [NSMutableArray new];
    DZTilesSection *section = [DZTilesSection new];
    section.title = @"Section One";
    [sections addObject:section];
    
    for (NSDictionary *sectionContent in content) {
        
        // create big tile representing header
        DZTile *secTile = [DZTile new];
        secTile.cellReusableIdentifier = @"SmallTileCell";
        secTile.title = sectionContent[@"title"];
        secTile.color = [[self class] colorFromHexString:sectionContent[@"color"]];
        secTile.image = [UIImage imageNamed:sectionContent[@"image"]];
        secTile.userData = sectionContent;
        secTile.blockSizeMultiplier = CGSizeMake([sectionContent[@"sizeWidth"] floatValue], [sectionContent[@"sizeHeight"] floatValue]);
        secTile.insets = UIEdgeInsetsMake(0, 0, 0, 0); // inner insets
        
//        [secTile setOnViewUpdate:^(DZTile *tile, UICollectionViewCell *cell) {
//            if ([cell isKindOfClass:[DZTileCollectionViewCell class]]) {
//                DZTileCollectionViewCell *tileCell = (DZTileCollectionViewCell*)cell;
//                tileCell.frontTitleLabel.text = tileCell.backTitleLabel.text = tile.title;
//            }
//        }];
        
        // place sectionTile to the only existing section
        [section.tiles addObject:secTile];
        
        // create small tiles representing items
        NSArray *items = sectionContent[@"items"];
        for (NSDictionary *item in items) {
            DZTile *itemTile = [DZTile new];
            
            itemTile.title = item[@"name"];
            itemTile.image = [UIImage imageNamed:item[@"image"]];
            itemTile.color = [[self class] colorFromHexString:item[@"color"]];
            itemTile.cellReusableIdentifier = @"SmallTileCell";
            itemTile.userData = item;
            itemTile.blockSizeMultiplier = CGSizeMake([item[@"sizeWidth"] floatValue], [item[@"sizeHeight"] floatValue]);
            [itemTile setOnViewUpdate:^(DZTile *tile, UICollectionViewCell *cell) {
                if ([cell isKindOfClass:[DZTileCollectionViewCell class]]) {
                    DZTileCollectionViewCell *tileCell = (DZTileCollectionViewCell*)cell;
                    tileCell.frontTitleLabel.text = tileCell.backTitleLabel.text = tile.title;
                    tileCell.frontContainerView.backgroundColor = tile.color;
                    tileCell.frontImageView.image = tile.image;
                    tileCell.backImageView.image = [UIImage imageNamed:@"price-mark"];
                    tileCell.backContainerView.backgroundColor = [UIColor whiteColor];
                    
                    if (!tile.isFacingBackwards) {
                        tileCell.frontContainerView.hidden = NO;
                        tileCell.backContainerView.hidden = YES;
                    }
                    else {
                        tileCell.frontContainerView.hidden = YES;
                        tileCell.backContainerView.hidden = NO;
                    }
                    
                    if (!tile.rotationTimer) {
                        DZTileTransformationType randomType = rand() % DZTileTransformationTypeInstant; //animated, not instant
                        Float32 randomTime = ((float)arc4random()/0xFFFFFFFFu * 10) + 5;
                        [tile scheduleAnimatedTransformation:randomType afterSeconds:randomTime];
                    }
                }
            }];
            
            [itemTile setOnTransformation:^(DZTile *tile,
                                            bool isDisplayed,
                                            UICollectionViewCell *cell,
                                            DZTileTransformationType transformationType,
                                            NSNumber *__autoreleasing *shouldPerformTransformation) {
                
                DZTileTransformationType randomType = rand() % DZTileTransformationTypeInstant; //animated, not instant
                Float32 randomTime = ((float)arc4random()/0xFFFFFFFFu * 10) + 5;
                [tile scheduleAnimatedTransformation:randomType afterSeconds:randomTime];
            }];
            
            [section.tiles addObject:itemTile];
        }
    }
    
    [self.tilesVC insertTilesSections:sections animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - DZTilesViewControllerMoveDelegate

- (BOOL)tilesViewController:(DZTilesViewController *)tilesVC collectionView:(LSCollectionViewHelper *)collectionView canMoveItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tilesViewController:(DZTilesViewController *)tilesVC collectionView:(LSCollectionViewHelper *)collectionView didMoveItemAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
    NSLog(@"Ya move dat sackr");
}

#pragma mark - Helpers

// Assumes input like "#00FF00" (#RRGGBB).
+ (UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

+ (UIColor*) randomColor {
    int r = arc4random() % 255;
    int g = arc4random() % 255;
    int b = arc4random() % 255;
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];
}
@end
