#!/bin/bash

set -eou pipefail

package_name="consul-template-plugin-system-information"

rm -rf *.tar.xz
makepkg -Cod; PKGVER=$(cd $(pwd)/src/$package_name/ && make ver) makepkg -esd
