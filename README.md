# Catcrypt
If you want to protect your file txt (or whatever) with a password you can use the command **mcrypt** like in the example:
```bash
$ mcrypt data.txt
```

It will generate a file data.txt.nc protected by a password that you insert during the encryption, well, to decrypt and read the content you should type:

```bash
$ mcrypt -d data.txt.nc
```

it will generate a file data.txt with the content of data.txt.nc, so to read and protect your data, you should open the file data.txt and delete it.

I made the shell function **catcrypt** to decrypt, get the content of the file txt (with the **cat** command) and delete it with just one command.

# Usage

Just add this code in your file **~/.bashrc** (if this file doesn't exist create it with $ touch ~/.bashrc) and restart your terminal or use $ source ~/.bashrc

```
# decrypt netCDF, read and delete
catcrypt() {
	file=$@
	mcrypt -d $file
	cat "${file::-3}"
	rm "${file::-3}"
}
alias catcrypt=catcrypt
```

example:

```
$ catcrypt data.txt.nc
```

it will print in your terminal the content decrypted of data.txt.nc
b
