//
//  main.m
//  RockPaperScissors
//
//  Created by Tanin on 02/06/2019.
//  Copyright © 2019 landtanin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    // Initialize an instance of RPSController
    RPSController *rpsController = [[RPSController alloc]init];
    
    // Send the message throwDown: to the game controller you just created
    [rpsController throwDown:Rock];
    
    // Create an NSString called results message
    NSString *resultsMessage = @"";
    // Call the method, messageForGame: using the gameController you just created
    resultsMessage = [rpsController messageForGame:rpsController.game];
    // Pass gameController.game as a parameter to messageForGame:
    
    // Assign the return value of messageForGame: to the resultsMessage string
    NSLog(@"%@", resultsMessage);
  }
  
  return 0;
}
