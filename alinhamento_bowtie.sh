# Construção do índice de alinhamento com Bowtie
#Para fazer o alinhamento das sequências alvo com a sequência referência é necessário criar arquivos indexdo arquivo de referência para conseguir rodar o programa.
bowtie-build reference.fasta reference_index

# Alinhamento das sequências contra a referência de Wolbachia
### É dado o arquivo de referência indexado e o arquivo fasta com a sequencia alvo
### -f = Indica que arquivo de entrada é FASTA
### -S = Arquivo de saída será gerada no formato SAM
### -a = Alinha todas as sequências do arquivo de entrada com a referência, e não apenas o melhor alinhamento que é o default do Bowtie
### -v = Igual a 0 significa que permite 0 mismatches entre as sequências de entrada e referência, então são alinhadas apenas sequências com alinhamento perfeito
### -p = Igual a 3, usa 3 threads
### -t = Exibe o tempo de excecução das etapas em arquivo de log
bowtie -f -S -a -v 0 -p 3 -t reference_index sample.fasta > sample.sam 2> sample_bowtie.log

