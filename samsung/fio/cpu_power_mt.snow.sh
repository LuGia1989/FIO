for i in {1..13}
do
  echo "count: $i"	
  ipmitool -I lanplus -H $2 -U admin -P LG9N8900293 sdr | grep -i CPU_PWR
done
