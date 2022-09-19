sensors|egrep "SoC|CPU|IO" | tr '\n' ' '  | awk '{print $0" Total Power "$6+$10" W"}'
