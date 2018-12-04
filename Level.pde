
ArrayList<Platform> levelObjects = new ArrayList<Platform>();

class Platform {
  
  PVector position = new PVector();
  PVector centroid = new PVector();
  int xLength, yLength;
  int halfWidthX;
  int halfWidthY;
  
  Platform( int x, int y, int w, int h ) {
     halfWidthX = w/2;
     halfWidthY = h/2;
     position.x = x; position.y = y;
     centroid.x = x + w/2; centroid.y = y + h/2; 
     xLength = w; yLength = h;
  }
  
}

void createPlatforms() {
    
    levelObjects.add( new Platform( 200, 400, 100, 20 ) );
    levelObjects.add( new Platform( 200, 300, 100, 20 ) );
    levelObjects.add( new Platform( 200, 200, 100, 20 ) );
  
  
}

void drawPlatforms() {
  
    fill( 255 ); //<>//
    for( int i=0; i<levelObjects.size(); i++ ) {
      Platform tempPlat = levelObjects.get(i);
      rect( tempPlat.position.x, tempPlat.position.y, tempPlat.xLength, tempPlat.yLength );
    }
  
}
