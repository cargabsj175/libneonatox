create-dirs:
	install -d -m 755 /usr/share/doc/libneonatox
	install -d -m 755 /usr/share/pixmaps
	install -d -m 755 /usr/share/applications
	install -d -m 755 /usr/bin
	install -d -m 755 /usr/lib/libneonatox
	install -d -m 755 /usr/share/libneonatox
	
all : create-dirs
	install -m 754 scripts/*	/usr/lib/libneonatox
	install -m 754 lib/*	/usr/lib/libneonatox
	install -m 754 icons/*	/usr/share/pixmaps
	install -m 754 AUTHORS	/usr/share/doc/libneonatox
	install -m 754 COPYING	/usr/share/doc/libneonatox
	install -m 754 NEWS	/usr/share/doc/libneonatox
	install -m 754 THANKS	/usr/share/doc/libneonatox
	ln -sf /usr/lib/libneonatox/addnewuser	/usr/bin/addnewuser
	ln -sf /usr/lib/libneonatox/changepassroot	/usr/bin/changepassroot
	ln -sf /usr/lib/libneonatox/findpart	/usr/bin/findpart
	ln -sf /usr/lib/libneonatox/infouser	/usr/bin/infouser
	ln -sf /usr/lib/libneonatox/neoupdate	/usr/bin/neoupdate
	ln -sf /usr/lib/libneonatox/updategrub2	/usr/bin/update-grub
	ln -sf /usr/lib/libneonatox/updategrub2	/usr/bin/update-grub2
	ln -sf /usr/lib/libneonatox/updategrub2	/usr/bin/updategrub2


install : all 

uninstall :
	rm -rf /usr/lib/libneonatox
	rm -rf /usr/share/doc/libneonatox
	rm -rf /usr/share/pixmaps/neoupdate.png
	rm -rf /usr/bin/addnewuser
	rm -rf /usr/bin/changepassroot
	rm -rf /usr/bin/findpart
	rm -rf /usr/bin/infouser
	rm -rf /usr/bin/neoupdate
	rm -rf /usr/bin/update{-grub{,2},grub2}
	
.PHONY:
	create-dirs all install uninstall

