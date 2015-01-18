#!/bin/bash

rm -rf build && mkdir build

echo 'Making Sphinx installer...'

mkdir -p build/root/lib/python2.7/site-packages
PYTHONPATH=build/root/lib/python2.7/site-packages easy_install --prefix build/root sphinx

sed -i '' "s|^#\!\(.*/python\)|#\!/usr/bin/env PYTHONPATH=/opt/sphinx-doc/lib/python2.7/site-packages \1|" build/root/bin/*

pkgbuild --identifier org.sphinx-doc --root build/root build/SphinxDocPackage.pkg --install-location /opt/sphinx-doc --scripts scripts

productbuild --distribution Distribution.xml --package-path build build/SphinxDoc.pkg
