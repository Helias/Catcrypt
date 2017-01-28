# decrypt netCDF, read and delete
catcrypt() {
	file=$@
	mcrypt -d $file
	cat "${file::-3}"
	rm "${file::-3}"
}
