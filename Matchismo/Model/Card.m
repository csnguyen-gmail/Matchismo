//
//  Card.m
//  Matchismo
//
//  Created by csnguyen on 5/5/13.
//  Copyright (c) 2013 csnguyen. All rights reserved.
//

#import "Card.h"
@interface Card()

@end

@implementation Card
@synthesize faceUp = _faceUp;   // because we provide getter & setter
@synthesize unplayable = _unplayable;   // because we provide getter & setter

- (BOOL)isFaceUp {
    return _faceUp;
}

- (void)setFaceUp:(BOOL)faceUp {
    _faceUp = faceUp;
}

- (BOOL)isUnplayable {
    return _unplayable;
}

- (void)setUnplayable:(BOOL)unplayable {
    _unplayable = unplayable;
}

-(int)matchCard:(NSArray *)othersCard {
    int score = 0;
    
    for (Card *card in othersCard) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
