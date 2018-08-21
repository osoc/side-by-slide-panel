#!/bin/sh
IF=../font/source-code-pro/source-code-pro.css
OF=../css/font.css
if [ -f $IF ];then
    cat $IF | \
        sed "s/url('/url('\.\.\/font\/source-code-pro\//" > $OF
fi

unset IF OF

