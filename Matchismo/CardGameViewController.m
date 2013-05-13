//
//  CardGameViewController.m
//  Matchismo
//
//  Created by csnguyen on 5/13/13.
//  Copyright (c) 2013 csnguyen. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (weak, nonatomic) IBOutlet UIButton *cardButton;
@property (strong, nonatomic) PlayingCardDeck *playCardDeck;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", _flipCount];
}

- (IBAction)flipCard:(UIButton *)sender {
    if (!sender.selected) {
        Card *card = [self.playCardDeck drawRandomCard];
        [self.cardButton setTitle:card.contents forState:UIControlStateSelected];
        self.flipCount++;
    }
    sender.selected = !sender.selected;
}

- (PlayingCardDeck *)playCardDeck {
    if (!_playCardDeck) {
        _playCardDeck = [[PlayingCardDeck alloc] init];
    }
    return _playCardDeck;
}


@end
