import sys.io.File;
import sys.FileSystem;

class Main {
	static function main() {
		addPackages();
	}

	static function addPackages() {
		var packages = [];

		for (pkgdir in FileSystem.readDirectory("/var/lib/pacman/local/")) {
			if (!FileSystem.isDirectory("/var/lib/pacman/local/" + pkgdir))
				continue;
			final desc = File.getContent("/var/lib/pacman/local/" + pkgdir + "/desc");
			packages.push(desc.split("\n")[1]);
		}

		trace(packages);
	}
}
