//
//  WavyFlowLayout.m
//  WavyCollectionView
//
//  Created by Bennett on 2018-08-15.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout
- (void)prepareLayout {
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    // Set minimum interitem spacing to be huge to force all items to be on their own line
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    // Need to copy attrs from super to avoid cached frame mismatch
    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc] init];
    
    newAttrs = [superAttrs copy];
    for (UICollectionViewLayoutAttributes* object in newAttrs){
        int screenHeight = self.collectionView.frame.size.height;
        object.frame = CGRectMake(object.frame.origin.x, arc4random_uniform(screenHeight), object.frame.size.width, object.frame.size.height);

    }
    
    
    // TODO: fill me in!
    
    return newAttrs;
}

@end
