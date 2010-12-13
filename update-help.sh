#!/bin/sh

src="$(dirname $(readlink -f $0))"
: ${CMAKE:=$(which cmake)}
$CMAKE "-DCMAKE_MODULE_PATH=$src" --help-custom-modules "$src/help.html"

