
include autoconf/Makefile.config

all:
	ocp-build init
	ocp-build

autoconf/configure: autoconf/configure.ac
	cd autoconf; autoconf

autoconf/Makefile.config: autoconf/configure
	./configure

install:
	ocp-build install \
		 -install-bin $(bindir) \
		 -install-lib $(ocamldir) \
		 -install-meta $(metadir) \
		$(INSTALL_PACKAGES)

clean:
	ocp-build init
	ocp-build clean

distclean: clean
	rm -rf _obuild
	rm -f autoconf/Makefile.config
	rm -f autoconf/config.ocpgen
	rm -f autoconf/config.status
	rm -f autoconf/config.log
	rm -rf autoconf/autom4te.cache/
	find . -name '*~' -exec rm -f {} \;
