package {

import com.greensock.TweenLite;

import flash.text.TextField;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.text.TextFieldAutoSize;

public class RedSquare extends Sprite{

    //---------------------------------------------------------------
    //  Private variables
    //---------------------------------------------------------------
    private var redRectangle:Sprite;
    //---------------------------------------------------------------
    //  Constructor
    //---------------------------------------------------------------
    public function RedSquare() {


        redRectangle = new Sprite();
        redRectangle.graphics.beginFill(0xFF0000);
        redRectangle.graphics.drawRect(100, 100, 50, 30);

        redRectangle.graphics.endFill();
        addChild(redRectangle);

        var textField:TextField = new TextField();
        textField.text = "MouseOver Red Square to start tween";
        textField.autoSize = TextFieldAutoSize.LEFT;
        addChild(textField);

        redRectangle.addEventListener(MouseEvent.MOUSE_OVER, onOver);


    }

    //---------------------------------------------------------------
    //  Public methods
    //---------------------------------------------------------------

    //---------------------------------------------------------------
    //  Private methods
    //---------------------------------------------------------------


    private function onOver(event:MouseEvent):void {

        TweenLite.to(redRectangle,3,{x:400,y:200,rotation:160})

    }
}
}
