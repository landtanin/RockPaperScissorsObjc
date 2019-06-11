#import "RPSTurn.h"

@implementation RPSTurn

-(instancetype)initWithMove:(Move) move {
  
  self = [super init];
  
  if (self){
    _move = move;
  }
  
  return self;
}

-(instancetype)init {
  
  self = [super init];
  
  if (self){
    _move = [self generateMove];
  }
  
  return self;
}

-(Move)generateMove {
  
  NSUInteger random = arc4random_uniform(3);
  
  switch(random) {
    case 0:
      return Rock;
      break;
    case 1:
      return Paper;
      break;
    case 2:
      return Scissors;
      break;
    default:
      return Invalid;
  }
  
  return Rock;
}

-(BOOL)defeats:(RPSTurn *)opponent {

  if ((self.move == Rock && opponent.move == Scissors) ||
      (self.move == Scissors && opponent.move == Paper) ||
      (self.move == Paper && opponent.move == Rock)) {
    return true;
  } else {
    return false;
  }
  
  return false;
}

-(NSString*)description {
  
  switch (self.move) {
    case Rock:
      return @"Rock";
    case Paper:
      return @"Paper";
    case Scissors:
      return @"Scissors";
    default:
      return @"Invalid";
  }
  
}

@end
