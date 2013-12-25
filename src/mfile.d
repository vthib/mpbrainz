import std.stdio;

class mfile
{
	immutable string name;
	immutable int bitrate;

	this(in string n, in int b) pure
	{
		this.name = n.idup;
		this.bitrate = b;
	}

	void
	prettyprint(File stream) const
	{
		stream.writefln("%s: %dkbps.", this.name, this.bitrate);
	}
}
