PACKAGE := mucor

.PHONY: help test build install-local uninstall-local clean

help:
	@printf '%s\n' \
	  'Mucor development commands:' \
	  '  make test             Check Bash syntax' \
	  '  make build            Build the Debian package' \
	  '  make install-local    Install to /usr/local/bin' \
	  '  make uninstall-local  Remove the local installation' \
	  '  make clean            Remove local build artifacts'

test:
	bash -n bin/$(PACKAGE)
	@echo "Bash syntax OK"

build: test
	dpkg-buildpackage -us -uc -b

install-local: test
	sudo install -D -m 755 bin/$(PACKAGE) \
		/usr/local/bin/$(PACKAGE)

uninstall-local:
	sudo rm -f /usr/local/bin/$(PACKAGE)

clean:
	rm -rf build
	rm -f ../$(PACKAGE)_*.deb
