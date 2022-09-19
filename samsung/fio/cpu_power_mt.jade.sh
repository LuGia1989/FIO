for i in {1..13}
do
  echo "count: $i"
  ipmitool -I lanplus -H $2 -U admin -P admin sdr type 'Power Supply' | grep -E 'S0_CPU_Pwr|S1_CPU_Pwr|Total_Power' 
done
