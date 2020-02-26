scp shg047@23.99.137.107:/home/shg047/luministuscdata3/$1 /mnt/gluster/nu_guos/
scp shg047@23.99.137.107:/home/shg047/luministuscdata3/$1.bai /mnt/gluster/nu_guos/
gunzip $i.gz
gunzip $i.bai.gz
perl ./bam2methhap.pl BUR.GRCH37.bed /mnt/gluster/nu_guos/$1 bismark hg19.chrom.sizes CpG.GRCH37.positions.txt > $1.methhap
scp $1.methhap shg047@23.99.137.107:/home/shg047/hapinfo/hapinfo/







