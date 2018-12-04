
Player player = new Player();

void setup() {
  size( 800, 600 );
  
  createPlatforms();
  
}

void draw() {
  background( 128 );
  
  drawPlatforms();
  player.update();
  player.render();
  
  
}
