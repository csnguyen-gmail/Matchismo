//
//  CardMatchinGame.h
//  Matchismo
//
//  Created by csnguyen on 5/20/13.
//  Copyright (c) 2013 csnguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"

@interface CardMatchingGame : NSObject
// designated initializer
- (id)initWithCardCount:(NSUInteger)count usingDeck:(Deck*)deck;
- (void)flipCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;
@property (readonly, nonatomic) int score;
@end
