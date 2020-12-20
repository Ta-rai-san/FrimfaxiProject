nasm -o boot.img boot.asm
dd if=boot.img bs=512 count=1 of=/proc/sys/Device/ImDisk0
