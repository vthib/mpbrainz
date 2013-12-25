import std.container;
import std.stdio;
import std.file;

import mfile;

class mdir
{
	immutable string name;

	this(in string dir)
	{
		this.name = dir.idup;
	}

	ref SList!mfile
	parse() const
	{
		auto l = new SList!mfile;

		foreach(file; dirEntries(this.name, SpanMode.shallow))
			l.insert(new mfile(file.name, 256));

		std.stdio.writefln("sl: %s %s %s\n", l, *l, &(*l));
		return *l;
	}
}
