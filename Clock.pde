class Clock extends Item {
	// Requirement #2: Complete Clock Class
  Clock(float x, float y){
    super(x, y);
  }
	
			// Display Clock
    void display(){
			image(clock, x, y);
    }

			// Check collision with player
    void checkCollision(Player player){
		    if(isHit(x, y, w, h, player.x, player.y, player.w, player.h)){
        isAlive=false;
				addTime(CLOCK_BONUS_SECONDS);
				x = y = -1000; // Now that they're objects, toggle isAlive instead of throwing them away from screen

			}
    }

		
	
}
