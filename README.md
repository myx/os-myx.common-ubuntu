# os-myx.common-ubuntu

The Ubuntu and Debian install entry point for `myx.common`. It carries no commands
of its own — all `myx.common` command logic, Linux implementations included, lives
in [os-myx.common](https://github.com/myx/os-myx.common).

## Install

Run as root:

	curl -L https://raw.githubusercontent.com/myx/os-myx.common-ubuntu/master/sh-scripts/install-myx.common-ubuntu.sh | sh -e

Or, with no network access to this file, paste the script instead. Run this as
root, paste the whole script text, then press CTRL+D:

	sh -c 'eval "`cat`"'

The installer unpacks `os-myx.common` into `/usr/local/`, then sets
`/usr/local/bin/myx.common` and `/usr/local/share/myx.common/bin` to `root:adm`
mode 755.

## Next step

	myx.common help

## Related packages

- [os-myx.common](https://github.com/myx/os-myx.common) — the commands themselves.
- [os-myx.common-macosx](https://github.com/myx/os-myx.common-macosx) — macOS install script.
- [os-myx.common-freebsd](https://github.com/myx/os-myx.common-freebsd) — FreeBSD install script.
