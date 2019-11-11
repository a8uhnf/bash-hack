read n
ret=0
for i in $(seq 1 ${n})
 do
    read a
    let ret+=$a
 done
# printf %.3f $((ret/n))
# answer=round($((ret/n)))
# awk '{printf "%d", "33.666"}'



v=$(bc -l <<< "scale=4; $ret/$n")

tmp=$v
minus=''

minus=$(echo $tmp | sed 's/[0-9]*[.][0-9]*$//')

# echo $tmp

if [ $minus = '-' ]
then
    tmp=$(echo $tmp | sed 's/-//')
fi

forth=$(echo $tmp | sed 's/^[0-9]*[.][0-9]\{3\}//')

third=$(echo $tmp | sed 's/^[0-9]*[.][0-9]\{2\}//' | sed 's/.$//')
first_two=$(bc -l <<< "scale=2; $ret/$n")

if [ $forth -gt 4 ]
then
    third=$((third+1))
fi
echo $first_two$third
