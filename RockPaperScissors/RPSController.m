//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Tanin on 02/06/2019.
//  Copyright © 2019 landtanin. All rights reserved.
//

#import "RPSController.h"

@implementation RPSController

-(void)throwDown:(Move)move {
  
  RPSTurn *playersTurn = [[RPSTurn alloc]initWithMove:move];
  RPSTurn *computersTurn = [[RPSTurn alloc]init];
  
  self.game = [[RPSGame alloc]initWithFirstTurn:playersTurn
                                     secondTurn:computersTurn];
  
}

-(NSString*)messageForGame:(RPSGame*)game {
  // First, handle the tie
  if (game.firstTurn.move == game.secondTurn.move) {
    return @"It's a tie";
  }
  
  // Then build up the results message "Rock defeats Scissors. You Win!" etc.
  NSString *winnerString = [[game winner] description];
  // Build the loserString here.
  NSString *loserString = [[game loser] description];
  // Build the resultsString here.
  NSString *resultsString = [self resultsString:game];
  
  NSString *wholeString = [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @"defeats", loserString, @".", resultsString];
  
  return wholeString;
  
}

-(NSString*)resultsString:(RPSGame *)game {
  return [game.firstTurn defeats:game.secondTurn] ? @"You win" : @"You lose";
}

@end
