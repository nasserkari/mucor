```text
      ███╗   ███╗██╗   ██╗ ██████╗ ██████╗ ██████╗
      ████╗ ████║██║   ██║██╔════╝██╔═══██╗██╔══██╗
      ██╔████╔██║██║   ██║██║     ██║   ██║██████╔╝
      ██║╚██╔╝██║██║   ██║██║     ██║   ██║██╔══██╗
      ██║ ╚═╝ ██║╚██████╔╝╚██████╗╚██████╔╝██║  ██║
      ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚═╝  ╚═╝
```

A minimal Debian package template.

## Requirements

```text
-  Debian-based Linux distribution
-  bash
-  make
-  dpkg-deb (provided by dpkg)
-  dpkg-dev (for Debian packaging tools)
```

## Build

Clone the repository and enter the project directory:

```bash
git clone https://github.com/nasserkari/mucor.git
cd mucor
```

Build the Debian package:

```bash
make clean
make build
```

## Install

Install the generated package:

```bash
sudo apt install ../mucor_*.deb
```

Alternatively, use `dpkg`:

```bash
sudo dpkg -i ../mucor_*.deb
sudo apt --fix-broken install
```

## Development commands

```bash
make help             # Show available commands
make test             # Check Bash syntax
make build            # Build the Debian package
make install-local    # Install to /usr/local/bin
make uninstall-local  # Remove the local installation
make clean            # Remove local build artifacts
```

## Project structure

```text
mucor/
├── bin/
│   └── mucor
├── debian/
│   ├── control
│   ├── rules
│   └── ...
├── man/
│   └── mucor.1
├── Makefile
└── README.md
```

## Manual

Read the manual page after installation:

```bash
man mucor
```

## Uninstall

Remove the installed package:

```bash
sudo apt remove mucor
```

To remove the package and its system configuration files, if any:

```bash
sudo apt purge mucor
```
