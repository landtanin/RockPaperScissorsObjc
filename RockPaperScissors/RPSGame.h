// RPSGame.h
#import <Foundation/Foundation.h>
#import "RPSTurn.h"

@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

-(instancetype)initWithFirstTurn:(RPSTurn*) playerTurn secondTurn: (RPSTurn*)computerTurn;
-(RPSTurn*)winner;
-(RPSTurn*)loser;
-(NSString*)resultsString:(RPSGame*) game;

@end
