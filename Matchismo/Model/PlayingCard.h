//
//  PlayingCard.h
//  Matchismo
//
//  Created by csnguyen on 5/13/13.
//  Copyright (c) 2013 csnguyen. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray*)validSuits;
+ (NSArray*)rankStrings;
+ (NSUInteger)maxRank;
@end
