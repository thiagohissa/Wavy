//
//  ViewController.m
//  Wavy Collection View
//
//  Created by Thiago Hissa on 2017-07-13.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "ViewController.h"
#import "WavyFlowLayout.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WavyFlowLayout *wavylayout = [WavyFlowLayout new];
    self.collectionView.collectionViewLayout = wavylayout;
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    return cell;
}


@end
