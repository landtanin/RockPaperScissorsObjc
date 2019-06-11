//
//  RPSController.h
//  RockPaperScissors
//
//  Created by Tanin on 02/06/2019.
//  Copyright © 2019 landtanin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"
#import "RPSGame.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSController : NSObject

@property (nonatomic) RPSGame *game;

-(void)throwDown:(Move) move;
-(NSString*)messageForGame:(RPSGame*) game;
-(NSString*)resultsString:(RPSGame *) game;

@end

NS_ASSUME_NONNULL_END
