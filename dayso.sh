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
