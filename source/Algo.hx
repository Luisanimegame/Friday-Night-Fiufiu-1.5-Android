package;

import flixel.FlxG;
/**
 * Definitivamente, toque.
 * @author Idklool
 */
class Algo {
  public static function justTouched():Bool {
    #if mobile
    for (touch in FlxG.touches.list)
      if (touch.justPressed)
        return true;
    #end

    return false;
  }

  public static function justPressed(obj:flixel.FlxBasic) {
    #if mobile
    for (touch in FlxG.touches.list)
      if (touch.justPressed && touch.overlaps(obj))
        return true;
    #end

    return false;
  }

  public static function justReleased(obj:flixel.FlxBasic) {
    #if mobile
    for (touch in FlxG.touches.list)
      if (touch.justReleased && touch.overlaps(obj))
        return true;
    #end

    return false;
  }

  public static function pressed(obj:flixel.FlxBasic) {
    #if mobile
    for (touch in FlxG.touches.list)
      if (touch.pressed && touch.overlaps(obj))
        return true;
    #end

    return false;
  }

  public static function released(obj:flixel.FlxBasic) {
    #if mobile
    for (touch in FlxG.touches.list)
      if (touch.released && touch.overlaps(obj))
        return true;
    #end

    return false;
  }

  public static function JRBACK()
    return #if android FlxG.android.justReleased.BACK #else false #end;
}