// RPSGame.m

#import "RPSGame.h"

@implementation RPSGame

-(instancetype)initWithFirstTurn:(RPSTurn*) playerTurn
                      secondTurn:(RPSTurn*) computerTurn {
    self = [super init];

    if(self) {
        _firstTurn = playerTurn;
        _secondTurn = computerTurn;
    }

    return self;
}

-(RPSTurn*)winner {
  return [self.firstTurn defeats:self.secondTurn] ? self.firstTurn : self.secondTurn;
}

-(RPSTurn*)loser {
 return [self.firstTurn defeats:self.secondTurn] ? self.secondTurn : self.firstTurn;
}

@end
