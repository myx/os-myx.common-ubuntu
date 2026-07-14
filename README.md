# os-myx.common-ubuntu

MDSC myx.distro package. Not needed to use myx.common standalone.

Implements no commands — all myx.common command logic, including the
Ubuntu/Debian `os/*` implementations, lives in `os-myx.common` itself. This
package is a supplementary, install-only placeholder: it registers
`os-myx.common-ubuntu` in the myx.distro-* package index and exports
`sh-scripts/install-myx.common-ubuntu.sh`, giving Ubuntu/Debian its own
install entry point/URL.

Files:
- `project.inf` — MDSC package metadata (`Requires: os-myx.common`,
  `Provides: deploy-export:...` exporting the install script's raw URL)
- `sh-scripts/install-myx.common-ubuntu.sh` — root-only bootstrap: curls the
  `os-myx.common` tarball, extracts it to `/usr/local/`, and chowns/chmods
  `bin/myx.common` + `share/myx.common/bin` to `root:adm` 755
