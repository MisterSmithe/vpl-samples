#!/bin/bash
# $Id: php_run.sh,v 1.3 2012-09-24 15:13:21 juanca Exp $
# Default PHP language run script for VPL
# Copyright (C) 2012 Juan Carlos Rodríguez-del-Pino
# License http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
# Author Juan Carlos Rodríguez-del-Pino <jcrodriguez@dis.ulpgc.es>
#load common script and check programs
. common_script.sh
check_program php
grep -q -e 120 $VPL_SUBFILE0 2&>1
if [ "$?" == "0" ] ; then
     echo "Error: you are not allowed to output the result directly"
else
    cat common_script.sh > vpl_execution
    echo "php -n -f $VPL_SUBFILE0" >>vpl_execution
    chmod +x vpl_execution
fi