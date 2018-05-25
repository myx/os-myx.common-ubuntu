#!/bin/sh -e

# There are two ways:
#
# 1) fetch https://raw.githubusercontent.com/myx/os-myx.common-ubuntu/master/sh-scripts/install-myx.common-ubuntu.sh -o - | sh -e
# or
# 2) To execute this as a script, run:
#		sh -c 'eval "`cat`"'
# on the target machine under the 'root' user, paste whole text from this file, then press CTRL+D.
#

echo "myx.common Ubuntu/Linux Installer started..." >&2

#
# Check user
#
test `id -u` != 0 && echo 'ERROR: Must be root!' && exit 1

curl -L https://github.com/myx/os-myx.common/archive/master.tar.gz --silent | \
		tar zxvf - -C "/usr/local/" --wildcards "**/host/tarball/*" --strip-components=3
		
curl -L https://github.com/myx/os-myx.common-ubuntu/archive/master.tar.gz --silent | \
		tar zxvf - -C "/usr/local/" --wildcards "**/host/tarball/*" --strip-components=3

chown root:wheel "/usr/local/bin/myx.common"
chmod 755 "/usr/local/bin/myx.common"

chown -R root:wheel "/usr/local/share/myx.common/bin"
chmod -R 755 "/usr/local/share/myx.common/bin"

# exec "/usr/local/share/myx.common/bin/reinstall"

#
# completion for root in bash:
# 		myx.common setup/console
#
