#!/usr/bin/expect
set timeout 60
spawn ssh albert@bitetree.com 
 interact {     
 timeout 300 {send "\x20"}
}
