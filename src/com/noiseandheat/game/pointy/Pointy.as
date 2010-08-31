package com.noiseandheat.game.pointy
{
    import flash.display.MovieClip;
    import flash.text.TextField;
    import flash.text.TextFormat;

    /**
     * @author dave
     */
    [SWF(backgroundColor="#F2AD2C", frameRate="31", width="640", height="480")]
    public class Pointy extends MovieClip
    {
        protected var progress:TextField;

        public function Pointy()
        {
            progress = createTextField();
            addChild(progress);
            setProgress("Loaded!");
        }

        protected function setProgress(message : String) : void
        {
            progress.text = message;
            progress.width = progress.textWidth + 4;
            progress.height = progress.textHeight + 4;
        }

        protected function createTextField() : TextField
        {
            var textfield:TextField = new TextField();
            var format:TextFormat = textfield.defaultTextFormat;

            format.font = "Arial";
            format.size = 18;

            textfield.defaultTextFormat = format;
            textfield.selectable = false;

            return textfield;
        }


    }
}
