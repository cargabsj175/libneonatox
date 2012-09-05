create-dirs:
	install -d -m 755 /usr/share/doc/libneonatox
	install -d -m 755 /usr/share/pixmaps
	install -d -m 755 /usr/share/applications
	install -d -m 755 /usr/bin
	install -d -m 755 /usr/lib/libneonatox
	install -d -m 755 /usr/share/libneonatox
	
all : create-dirs
	install -m 754 scripts/*	/usr/bin
	install -m 754 lib/*	/usr/lib/libneonatox
	install -m 754 AUTHORS	/usr/share/doc/libneonatox
	install -m 754 COPYING	/usr/share/doc/libneonatox
	install -m 754 NEWS	/usr/share/doc/libneonatox
	install -m 754 THANKS	/usr/share/doc/libneonatox
		
install : all

.PHONY:
	create-dirs all install

