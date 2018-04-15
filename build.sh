#!/bin/bash
./configure --prefix=/usr              \
            --with-internal-glib       \
            --disable-host-tool        \
            --docdir=/usr/share/doc/pkg-config-0.29.2
make -j $SHED_NUM_JOBS
make DESTDIR=$SHED_FAKE_ROOT install
