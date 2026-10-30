package foxlite;

#if FEATURE_LOG_TRACE
class FoxLog
{
	public static var lastLog:String;
	public static var lastWarning:String;

	public static function log(origin:String, message:String):Void
	{
		lastLog = message;
		#if sys
		Sys.println(' FOXLITE '.bold().bg_orange() + ' [FoxLite > $origin]: $message');
		#else
		trace(' FOXLITE '.bold().bg_orange() + ' [FoxLite > $origin]: $message');
		#end
	}

	public static function warning(origin:String, message:String):Void
	{
		lastWarning = message;
		#if sys
		Sys.println(' FOXLITE '.bold().bg_orange() + ' [FoxLite > $origin] WARNING: $message');
		#else
		trace(' FOXLITE '.bold().bg_orange() + ' [FoxLite > $origin] WARNING: $message');
		#end
	}
}
#else
class FoxLog
{
	public static var lastLog:String;
	public static var lastWarning:String;

	public static function log(origin:String, message:String):Void {}
	public static function warning(origin:String, message:String):Void {}
}
#end