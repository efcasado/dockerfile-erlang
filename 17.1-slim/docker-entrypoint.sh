#!/bin/bash
set -e

if [ $# -eq 0 ]; then
    exec /bin/bash
elif [ "$1" = 'erl' ]; then
    ERL="erl \
-kernel inet_dist_listen_min $DIST_ERLANG_PORT_MIN \
-kernel inet_dist_listen_max $DIST_ERLANG_PORT_MAX"
    exec $ERL "$@"
fi

exec "$@"
