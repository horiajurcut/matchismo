//
//  ViewController.m
//  Matchismo
//
//  Created by Horia Jurcut on 01/07/16.
//  Copyright © 2016 Horia Jurcut. All rights reserved.
//

#import "CardGameViewController.h"
#import "Card.h"
#import "Deck.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface CardGameViewController ()

@property (strong, nonatomic) Deck *deck;
@property (weak, nonatomic) IBOutlet UILabel *flipsCount;
@property (nonatomic) int flipCount;

@end

@implementation CardGameViewController

- (Deck *)deck
{
    if (!_deck) {
        _deck = [[PlayingCardDeck alloc] init];
    }
    return _deck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsCount.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        Card *card = [self.deck drawRandomCard];

        if (!card) {
            return;
        }

        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        [sender setTitle:card.contents forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end
