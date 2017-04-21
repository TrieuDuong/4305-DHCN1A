echo "CHUONG TRINH NHAP VA IN RA TONG DAY N PHAN TU"
echo "Nhap n"
read n
	for((i=0; i<n; i++))
	do
		printf "Nhap phan tu thu a[$i]="
		read a[$i]
	done
	echo "Day vua nhap la: ${a[@]}"
	
	tong=0
	for((i=0; i<n; i++))
	do
		tong=$(( $tong + ${a[$i]}))
	done
	echo "Tong day vua nhap la: $tong"
# sap xep
	for (( i = 0; i < $(($n-1)) ; i++ ))
do
   for (( j = $i; j < $n; j++ ))
   do

      if [[ ${a[$i]} -gt ${a[$j]} ]]
      then

       t=${a[$i]}
       a[$i]=${a[$j]}
       a[$j]=$t
      fi
   done
done

echo "Day sap xep tang dan:"
for (( i = 0; i < $n ; i++ ))
do
echo -n "${a[$i]} 	"
done
echo

