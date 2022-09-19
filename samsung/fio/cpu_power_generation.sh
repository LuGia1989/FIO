#./cpu_power_generation.sh <BOARD: snow/jade> <BMC IP> <filename>
timestamp=`date "+%Y%m%d-%H%M%S"`
echo 'Start:' + $timestamp
if [ $1 == 'snow' ]
then
  echo "snow"
  echo $2
  ./cpu_power_mt.snow.sh $1 $2 >> ./logs/$3_$timestamp.log
else
  echo "jade"
  echo $2
  ./cpu_power_mt.jade.sh $1 $2 >> ./logs/$3_$timestamp.log
fi
timestamp=`date "+%Y%m%d-%H%M%S"`
echo 'End:' + $timestamp
