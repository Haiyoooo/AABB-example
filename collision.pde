

boolean collided( PVector chrPos, int chrHalfWidth ) {
 
    for( int i=0; i<levelObjects.size(); i++ ) {
      Platform tempPlat = levelObjects.get(i); 
      if( abs(tempPlat.centroid.x - (chrPos.x + chrHalfWidth) ) > tempPlat.halfWidthX + chrHalfWidth ) { continue; }
      if( abs(tempPlat.centroid.y - (chrPos.y + chrHalfWidth) ) > tempPlat.halfWidthY + chrHalfWidth ) { continue; }
      return true;
    }
    return false;
}
