#!/bin/bash

set -x

DIRECTORIES=(/home/user1)

for DIR in "${DIRECTORIES[@]}"
do
    rsync -a ${DIR}/ user1@10.10.14.2:${DIR}
    rsync -a ${DIR}/ user1@10.10.14.3:${DIR}
    rsync -a ${DIR}/ user1@10.10.14.4:${DIR}
    rsync -a ${DIR}/ user1@10.10.14.5:${DIR}
    rsync -a ${DIR}/ user1@10.10.14.6:${DIR}
    rsync -a ${DIR}/ user1@10.10.14.24:${DIR}
done

set +x
