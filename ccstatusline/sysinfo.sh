#!/bin/sh
# CPU/RAM cho ccstatusline (macOS)
cpu=$(ps -A -o %cpu | awk -v n="$(sysctl -n hw.ncpu)" 'NR>1 {s+=$1} END {printf "%.0f", s/n}')
mem=$(vm_stat | awk '
  /page size of/ {ps=$8}
  /Pages active/ {gsub("\\.","",$3); a=$3}
  /Pages wired down/ {gsub("\\.","",$4); w=$4}
  /occupied by compressor/ {gsub("\\.","",$5); c=$5}
  END {printf "%.1f", (a+w+c)*ps/1073741824}')
total=$(sysctl -n hw.memsize | awk '{printf "%.0f", $1/1073741824}')
printf "CPU %s%% | RAM %s/%sG" "$cpu" "$mem" "$total"
