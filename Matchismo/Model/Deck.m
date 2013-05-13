//
//  Deck.m
//  Matchismo
//
//  Created by csnguyen on 5/13/13.
//  Copyright (c) 2013 csnguyen. All rights reserved.
//

#import "Deck.h"


@interface Deck()
@property (strong, nonatomic)  NSMutableArray *cards;
@end

@implementation Deck

- (NSMutableArray *)card {
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop {
    if (atTop) {
        [self.card insertObject:card atIndex:0];
    }
    else {
        [self.card addObject:card];
    }
}

- (Card*)drawRandomCard {
    Card *randomCard = nil;
    
    if (self.cards.count) {
        unsigned index = arc4random() % self.cards.count;
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end
