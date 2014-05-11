package 
{
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Kenny
	 */
	public class PowerUp extends ZzUnit
	{
		[Embed(source = '../media/rocket.png')] 
		private static var boosterPNG:Class;
		
		/**
		 * Type for Speed boost power up
		 */
		public static const BOOSTER:* = "booster";
		
		/**
		 * Type for stop watch power up
		 * This is like a booster but uses bullet time so the zamboni is more easily controlled
		 */
		public static const STOP_WATCH:* = "stop-watch";
		
		//Amount that booster speeds up zamboni by
		public static const BOOSTER_SPEED_AMT:Number = 4;
		
		public static const BOOSTER_TIME_LENGTH:Number = 8;
		
		/**
		 * The type of this PowerUp
		 */
		public var type:*;
		
		public function PowerUp(x:Number = 0, y:Number = 0, type:* = BOOSTER) {
			super(x, y);
			this.type = type;
			this.width = LevelLoader.TILE_SIZE;
			this.height = LevelLoader.TILE_SIZE;
			loadGraphic(boosterPNG, false, true, 16, 16);
		}
	}
	
}