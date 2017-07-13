//
//  WavyFlowLayout.m
//  Wavy Collection View
//
//  Created by Thiago Hissa on 2017-07-13.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout

-(void)prepareLayout{
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    
    
    NSArray<UICollectionViewLayoutAttributes*> *superAttributes = [super layoutAttributesForElementsInRect:rect];
    
    NSMutableArray<UICollectionViewLayoutAttributes*> *newAttributes = [[NSMutableArray alloc]init];
    NSMutableArray<UICollectionViewLayoutAttributes*> *copy = [[NSMutableArray alloc]init];
    
    for(int i = 0; i< superAttributes.count; i++){
        copy[i] = superAttributes[i];
        CGRect newY = copy[i].frame;
        newY.origin.y +=arc4random_uniform(100)+10;
        newY.size.height += arc4random_uniform(100)+30;
        copy[i].frame = newY;
        newAttributes[i] = copy[i];
    }
    
    
    return newAttributes;
}

@end
