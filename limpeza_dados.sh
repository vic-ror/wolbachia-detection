# Avaliação de qualidade das leituras com FastQC
####Gera arquivo fast qc a que pode ser aberto no navegador a fim de ver como está a qualidade das reads
fastqc SRRXXXXXXX.fastq

# Limpeza e corte de sequências de baixa qualidade com Trim Galore
#### Responsavel por remover sequências espúrias, com base em uma qualidade de phred nesse caso de 25
### Trim-n = Reomove bases "N" no começo ou final da sequencia
### -j 1 = Usa-rá apenas 1 thread
#### Reads menores que 18 pb serão descartadas
trim_galore --fastqc -q 25 --trim-n --max_n 0 -j 1 --length 18 --dont_gzip SRRXXXXXXX.fastq

