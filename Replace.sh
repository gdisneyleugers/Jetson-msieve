for i in `ls */*.c`; do
echo $i
cat $i|sed 's/memset/cudaMemset/g' > $i.1
cat $i.1|sed 's/memcpy/cudaMemcpy/g' > $i.tmp
#cat $i.1|sed 's/free/cudaFree/g' > $i.tmp
#cat $i.1|sed 's/xmalloc/cudaMalloc/g' > $i.tmp
cp $i.tmp $i
done
for i in `ls */*/*.c`;do
echo $i
cat $i|sed 's/memset/cudaMemset/g' > $i.1
cat $i|sed 's/memcpy/cudaMemcpy/g' > $i.tmp
#cat $i|sed 's/free/cudaFree/g' > $i
#cat $i|sed 's/xmalloc/cudaMalloc/g' > $i
cp $i.tmp $i
done
