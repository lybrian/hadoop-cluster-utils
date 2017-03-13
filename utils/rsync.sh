#!/bin/bash

set -x

DIRECTORIES=(/home/user1)

for DIR in "${DIRECTORIES[@]}"
do
    rsync -a ${DIR}/ user1@Slave2:${DIR}
    rsync -a ${DIR}/ user1@Slave3:${DIR}
    rsync -a ${DIR}/ user1@Slave4:${DIR}
    rsync -a ${DIR}/ user1@Slave5:${DIR}
    rsync -a ${DIR}/ user1@Slave6:${DIR}
    rsync -a ${DIR}/ user1@Slave1:${DIR}
done

set +x
