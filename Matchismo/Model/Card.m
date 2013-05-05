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
@synthesize faceUp = _faceUp;
@synthesize unplayable = _unplayable;

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

@end
