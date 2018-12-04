class Player {
  
  PVector position;
  PVector movementVec = new PVector(); // use of movementVec allows us to pop object out from a collision
  int chrSize = 20; // assumes character is a square
  int halfWidth;
  int speed = 2;
  
  Player() {
    halfWidth = chrSize/2; //calculate at construct time to save some math later
    position = new PVector( 0, 0 );
  }
  
  void update() {
    movementVec.set(0,0);
    if( keyPressed ) {
      switch( keyCode ){
        case UP:
          if( position.y > 0 ) { movementVec.y = -speed; }
          break;
        case DOWN:
          if( position.y < height ) { movementVec.y = speed; }
          break;
        case LEFT:
          if( position.x > 0 ) { movementVec.x = -speed; }
          break;
        case RIGHT:
          if( position.x < width ) { movementVec.x = speed; }
          break;
        }
    }
    position.add(movementVec); 
    if( collided(position,halfWidth) ) {
      position.sub(movementVec);
    }
  }
  
  void render() {
    fill( 200 );
    rect( position.x, position.y, chrSize, chrSize );
  }
}
