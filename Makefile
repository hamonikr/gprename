# Makefile for GPRename
# Author: Marvin Stark <marv@der-marv.de>
# Copyright (C) 2007 gprename-users@lists.sourceforge.net

# Globals:
# PREFIX=/usr/local
# DESTDIR=/usr/local
PREFIX=/usr
DESTDIR=$(CURDIR)/debian/gprename

build:
	# Create temporary build directory and modify file locations.
	install -d "$(CURDIR)/build"
	install -d "$(CURDIR)/build/locale"
	install -d "$(CURDIR)/build/locale/ca"
	install -d "$(CURDIR)/build/locale/de"
	install -d "$(CURDIR)/build/locale/es"
	install -d "$(CURDIR)/build/locale/et"
	install -d "$(CURDIR)/build/locale/fr"
	install -d "$(CURDIR)/build/locale/id"
	install -d "$(CURDIR)/build/locale/it"
	install -d "$(CURDIR)/build/locale/ko"	
	install -d "$(CURDIR)/build/locale/nl"
	install -d "$(CURDIR)/build/locale/pl"
	install -d "$(CURDIR)/build/locale/pt_BR"
	install -d "$(CURDIR)/build/locale/ro"
	install -d "$(CURDIR)/build/locale/ru"
	install -d "$(CURDIR)/build/locale/sv"
	install -d "$(CURDIR)/build/locale/zh_CN"

install: build
	# Compile all .po files to .mo
	msgfmt -o build/locale/ca.mo	locale/ca.po
	msgfmt -o build/locale/de.mo	locale/de.po
	msgfmt -o build/locale/es.mo	locale/es.po
	msgfmt -o build/locale/et.mo	locale/et.po
	msgfmt -o build/locale/fr.mo	locale/fr.po
	msgfmt -o build/locale/id.mo 	locale/id.po
	msgfmt -o build/locale/it.mo 	locale/it.po
	msgfmt -o build/locale/ko.mo 	locale/ko.po	
	msgfmt -o build/locale/nl.mo 	locale/nl.po
	msgfmt -o build/locale/pl.mo 	locale/pl.po
	msgfmt -o build/locale/pt_BR.mo	locale/pt_BR.po
	msgfmt -o build/locale/ro.mo	locale/ro.po
	msgfmt -o build/locale/ru.mo	locale/ru.po
	msgfmt -o build/locale/sv.mo	locale/sv.po
	msgfmt -o build/locale/zh_CN.mo	locale/zh_CN.po

	# Create directories
	install -d "$(DESTDIR)$(PREFIX)"
	install -d "$(DESTDIR)$(PREFIX)/bin"
	install -d "$(DESTDIR)$(PREFIX)/share"
	install -d "$(DESTDIR)$(PREFIX)/share/icons"
	install -d "$(DESTDIR)$(PREFIX)/share/pixmaps"
	install -d "$(DESTDIR)$(PREFIX)/share/pixmaps/gprename"	
	install -d "$(DESTDIR)$(PREFIX)/share/applications"
	install -d "$(DESTDIR)$(PREFIX)/share/man"
	install -d "$(DESTDIR)$(PREFIX)/share/man/man1"
	install -d "$(DESTDIR)$(PREFIX)/share/locale/ca/LC_MESSAGES"
	install -d "$(DESTDIR)$(PREFIX)/share/locale/de/LC_MESSAGES"
	install -d "$(DESTDIR)$(PREFIX)/share/locale/es/LC_MESSAGES"
	install -d "$(DESTDIR)$(PREFIX)/share/locale/et/LC_MESSAGES"
	install -d "$(DESTDIR)$(PREFIX)/share/locale/fr/LC_MESSAGES"
	install -d "$(DESTDIR)$(PREFIX)/share/locale/id/LC_MESSAGES"
	install -d "$(DESTDIR)$(PREFIX)/share/locale/it/LC_MESSAGES"
	install -d "$(DESTDIR)$(PREFIX)/share/locale/ko/LC_MESSAGES"	
	install -d "$(DESTDIR)$(PREFIX)/share/locale/nl/LC_MESSAGES"
	install -d "$(DESTDIR)$(PREFIX)/share/locale/pl/LC_MESSAGES"
	install -d "$(DESTDIR)$(PREFIX)/share/locale/pt_BR/LC_MESSAGES"
	install -d "$(DESTDIR)$(PREFIX)/share/locale/ro/LC_MESSAGES"
	install -d "$(DESTDIR)$(PREFIX)/share/locale/ru/LC_MESSAGES"
	install -d "$(DESTDIR)$(PREFIX)/share/locale/sv/LC_MESSAGES"
	install -d "$(DESTDIR)$(PREFIX)/share/locale/zh_CN/LC_MESSAGES"

	# Copy all files in the filesystem
	install -m 755 bin/gprename                  "$(DESTDIR)$(PREFIX)/bin/"
	install -m 644 bin/gprename.desktop          "$(DESTDIR)$(PREFIX)/share/applications/"	
	install -m 644 icon/gprename.png             "$(DESTDIR)$(PREFIX)/share/icons/"
	install -m 644 icon/gprename_nautilus-action.png  "$(DESTDIR)$(PREFIX)/share/icons/"
	install -m 644 icon/gprename_debian_menu_icon.xpm "$(DESTDIR)$(PREFIX)/share/pixmaps/gprename"	
	install -m 644 man/gprename.1                "$(DESTDIR)$(PREFIX)/share/man/man1/"
	install -m 644 build/locale/ca.mo            "$(DESTDIR)$(PREFIX)/share/locale/ca/LC_MESSAGES/gprename.mo"
	install -m 644 build/locale/de.mo            "$(DESTDIR)$(PREFIX)/share/locale/de/LC_MESSAGES/gprename.mo"
	install -m 644 build/locale/es.mo            "$(DESTDIR)$(PREFIX)/share/locale/es/LC_MESSAGES/gprename.mo"
	install -m 644 build/locale/et.mo            "$(DESTDIR)$(PREFIX)/share/locale/et/LC_MESSAGES/gprename.mo"
	install -m 644 build/locale/fr.mo            "$(DESTDIR)$(PREFIX)/share/locale/fr/LC_MESSAGES/gprename.mo"
	install -m 644 build/locale/id.mo            "$(DESTDIR)$(PREFIX)/share/locale/id/LC_MESSAGES/gprename.mo"
	install -m 644 build/locale/it.mo            "$(DESTDIR)$(PREFIX)/share/locale/it/LC_MESSAGES/gprename.mo"
	install -m 644 build/locale/ko.mo            "$(DESTDIR)$(PREFIX)/share/locale/ko/LC_MESSAGES/gprename.mo"	
	install -m 644 build/locale/nl.mo            "$(DESTDIR)$(PREFIX)/share/locale/nl/LC_MESSAGES/gprename.mo"
	install -m 644 build/locale/pl.mo            "$(DESTDIR)$(PREFIX)/share/locale/pl/LC_MESSAGES/gprename.mo"
	install -m 644 build/locale/pt_BR.mo         "$(DESTDIR)$(PREFIX)/share/locale/pt_BR/LC_MESSAGES/gprename.mo"
	install -m 644 build/locale/ro.mo            "$(DESTDIR)$(PREFIX)/share/locale/ro/LC_MESSAGES/gprename.mo"
	install -m 644 build/locale/ru.mo            "$(DESTDIR)$(PREFIX)/share/locale/ru/LC_MESSAGES/gprename.mo"
	install -m 644 build/locale/sv.mo            "$(DESTDIR)$(PREFIX)/share/locale/sv/LC_MESSAGES/gprename.mo"
	install -m 644 build/locale/zh_CN.mo         "$(DESTDIR)$(PREFIX)/share/locale/zh_CN/LC_MESSAGES/gprename.mo"
	@echo "Installation completed."

uninstall: clean
	rm -f  "$(DESTDIR)$(PREFIX)/bin/gprename"
	rm -f  "$(DESTDIR)$(PREFIX)/share/icons/gprename.png"
	rm -f  "$(DESTDIR)$(PREFIX)/share/icons/gprename_nautilus-action.png"
	rm -f  "$(DESTDIR)$(PREFIX)/share/pixmaps/gprename/gprename_debian_menu_icon.xpm"
	rm -f  "$(DESTDIR)$(PREFIX)/share/applications/gprename.desktop"
	rm -f  "$(DESTDIR)$(PREFIX)/share/man/man1/gprename.1"
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/ca/LC_MESSAGES/gprename.mo"
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/de/LC_MESSAGES/gprename.mo"
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/es/LC_MESSAGES/gprename.mo"
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/et/LC_MESSAGES/gprename.mo"
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/fr/LC_MESSAGES/gprename.mo"
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/id/LC_MESSAGES/gprename.mo"
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/it/LC_MESSAGES/gprename.mo"
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/ko/LC_MESSAGES/gprename.mo"	
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/nl/LC_MESSAGES/gprename.mo"
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/pl/LC_MESSAGES/gprename.mo"
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/pt_BR/LC_MESSAGES/gprename.mo"
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/ro/LC_MESSAGES/gprename.mo"
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/ru/LC_MESSAGES/gprename.mo"
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/sv/LC_MESSAGES/gprename.mo"
	rm -f  "$(DESTDIR)$(PREFIX)/share/locale/zh_CN/LC_MESSAGES/gprename.mo"

clean:
	rm -rf build

help:
	@echo "Type \"make install\" to install GPRename."
	@echo "Type \"make uninstall\" to remove GPRename."
	@echo "Type \"make clean\" to clean the current directory."
