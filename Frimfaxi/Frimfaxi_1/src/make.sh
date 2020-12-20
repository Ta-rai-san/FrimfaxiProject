cd "C:/Program Files/NASM/"
nasm -o C:/Users/Developer/FrimfaxiProject/Frimfaxi/Frimfaxi_1/src/Intermediateboot.img C:/Users/Developer/FrimfaxiProject/boot.asm
dd if=C:/Users/Developer/FrimfaxiProject/boot.img bs=512 count=1 of=/proc/sys/Device/ImDisk0
