  1 #!/bin/bash
  2 for run in {1..10}
  3 do
  4 date +%T
  5 #sleep 5
  6 sleep 0.5
  7 done
  8 cat /proc/cpuinfo >> cpu_info.txt
  9 grep "^NAME=" /etc/os-release > os_info.txt
 10 grep "^NAME=" /etc/os-release | cut -d'=' -f2 | tr -d '"' >> os_info.txt
 12 touch fifty_files/{50..100}.txt
