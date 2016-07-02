//
//  Deck.h
//  Matchismo
//
//  Created by Horia Jurcut on 02/07/16.
//  Copyright © 2016 Horia Jurcut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end
