#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set repeat.wait 10
/bin/echo -n .
$cli set repeat.initial_wait 100
/bin/echo -n .
$cli set remap.optionR2controlR_etx 1
/bin/echo -n .
$cli set remap.commandR2optionR_etx 1
/bin/echo -n .
/bin/echo
