package flash.events;

#if flash
import openfl.display.InteractiveObject;

extern class ContextMenuEvent extends Event
{
	public static var MENU_ITEM_SELECT(default, never):String;
	public static var MENU_SELECT(default, never):String;
	public var contextMenuOwner:InteractiveObject;
	#if flash
	@:require(flash10) public var isMouseTargetInaccessible:Bool;
	#end
	public var mouseTarget:InteractiveObject;
	public function new(type:String, bubbles:Bool = false, cancelable:Bool = false, mouseTarget:InteractiveObject = null,
		contextMenuOwner:InteractiveObject = null);
}
#else
typedef ContextMenuEvent = openfl.events.ContextMenuEvent;
#end
