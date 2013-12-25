import std.container;
import std.file;
import std.stdio;

import mdir;
import mfile;

int
main(string[] args)
{
	mdir dir = new mdir((args.length > 1) ? args[1] : getcwd());

	try {
		auto fl = dir.parse();
		writefln("sl2: %s %s\n", fl, &fl);
		foreach (f; fl)
			f.prettyprint(stdout);
	} catch (Exception e) {
		stderr.writeln(e.msg);
		return 1;
	}

	return 0;
}
