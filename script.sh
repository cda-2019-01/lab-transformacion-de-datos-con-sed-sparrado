# Escriba su código aquí
#!/bin/bash
sed 's+;[0-9]++3' data.txt > out1.txt
sed 's+/+-+g' out1.txt > out2.txt
sed 's+,+.+g' out2.txt > out3.txt
sed 's+;+,+g' out3.txt > out4.txt
sed 's+\([0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9]\)+20\3-\2-\1+g' out4.txt > out5.txt
sed 's+,,+,\\N,+g' out5.txt > out6.txt
cat out6.txt
sed 's+,N+,\\N+g' out6.txt > out7.txt
sed 's+,[[:space:]]+,\\N+g'  out7.txt > out8.txt
tr '[:lower:]' '[:upper:]' < out8.txt > out9.txt
sed '/\\N/d' out9.txt > lab01_sparrado.txt
rm out*
