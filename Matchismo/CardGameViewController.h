//
//  ViewController.h
//  Matchismo
//
//  Created by Horia Jurcut on 01/07/16.
//  Copyright © 2016 Horia Jurcut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Deck.h"

@interface CardGameViewController : UIViewController

- (Deck *)createDeck; // abstract

@end

