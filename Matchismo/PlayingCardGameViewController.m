//
//  PlayingCardGameViewController.m
//  Matchismo
//
//  Created by Horia Jurcut on 06/07/16.
//  Copyright © 2016 Horia Jurcut. All rights reserved.
//

#import "PlayingCardGameViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingCardGameViewController ()

@end

@implementation PlayingCardGameViewController

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

@end
