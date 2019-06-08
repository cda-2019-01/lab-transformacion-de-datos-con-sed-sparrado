# Escriba su código aquí
#!/bin/bash
cp data.csv data.txt
sed 's+\([0-9]\)/\([0-9]\)/20+0\1/0\2/+1' data.txt > out1.txt
sed 's+/+-+g' out1.txt > out2.txt
sed 's+,+.+g' out2.txt > out3.txt
sed 's+;+,+g' out3.txt > out4.txt
sed 's+\([0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9]\)+20\3-\2-\1+g' out4.txt > out5.txt
sed 's+,,+,\\N,+g' out5.txt > out6.txt
sed '5 s+,+,\\N+3'  out6.txt > out7.txt
sed '7 s+,+,\\N+3'  out7.txt > out8.txt
tr '[:lower:]' '[:upper:]' < out8.txt > out9.txt
sed 's+,N+,\\N+g' out9.txt > lab01_sparrado.csv
rm out* data.txt
