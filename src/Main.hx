package;

import flash.text.TextField;
import openfl.display.Sprite;
import openfl.Lib;
import openfl.text.TextFieldType;

/**
 * ...
 * @author Andy Woods
 */
class Main extends Sprite 
{

	public function new() 
	{
		super();
		
		var tf = new TextField();
		tf.text = duplicate('multiline = false, wordWrap = true, INPUT', 10);
		tf.type = TextFieldType.INPUT;
		tf.background = true;
		tf.backgroundColor = 0xffff00;
		tf.maxChars = 10;
		tf.multiline = false;
		tf.wordWrap = false;
		tf.width = 200;
		tf.height = 50;
		this.addChild(tf);
		tf.y = 100;
		tf.x = 200;
	}
	
	
	function duplicate(str:String, i:Int) {
		var arr:Array<String> = [];
		while (--i > 0) {
			arr.push(str);
		}
		return arr.join(", ");
	}

}
