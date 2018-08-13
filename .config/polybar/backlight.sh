brightness=$(( ($(cat '/sys/class/backlight/acpi_video0/brightness') + 1)/3))
output=

for (( i=0; i<=$brightness; i=i+1 )); do
	output="${output}\u25CF"
done

for (( i=$brightness+1; i<=5; i=i+1 ));do 
	output="${output}\u25CB"
done

printf "%b" $output
