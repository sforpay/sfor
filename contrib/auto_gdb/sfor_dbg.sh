#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.sforcore/sford.pid file instead
sfor_pid=$(<~/.sforcore/testnet3/sford.pid)
sudo gdb -batch -ex "source debug.gdb" sford ${sfor_pid}
