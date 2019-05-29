class Cabbage extends Item{
	// Requirement #1: Complete Cabbage Class
  
    Cabbage(float x, float y){
    super(x, y);
  }
    
  
	  // Display Cabbage
    void display(){
      image(cabbage, x, y);
    }
    
			

			// Check collision with player
    void checkCollision(Player player){
        if(player.health < player.PLAYER_MAX_HEALTH
  			&& isHit(x, y, w, h, player.x, player.y, player.w, player.h)){
          isAlive=false;
  				player.health ++;
  				x = y = -1000; // Now that they're objects, toggle isAlive instead of throwing them away from screen
          
  			}
      

		}
}

	
