rm(list = ls())
# Codigos para Revisao da Literatura

# Fonte: https://www.bibliometrix.org/vignettes/Introduction_to_bibliometrix.html

#install.packages("bibliometrix")

library(bibliometrix)
library(openxlsx)

# Baixar todos os dados em arquivos Bibtex or Plain Text || Keywords: ("Agroindustry" OR "Agribusiness") AND ("Chain" OR "Logistic")

# Ler bases e Converter pra dataframe

# Scopus

M1 <- bibliometrix::convert2df("Data/scopus.bib",
                               dbsource = "scopus", format = "bibtex")

# WoS

M2 <- bibliometrix::convert2df("Data/savedrecs.bib",
                               dbsource = "wos", format = "bibtex")

# Unir e remover duplicatas

M <- bibliometrix::mergeDbSources(M1, M2, remove.duplicated = TRUE)
M <- M[M[["AU"]] != "NA N",]

file.remove("AgriChain40.xlsx")
write.xlsx(M, "AgriChain40.xlsx")


# No biblioshiny tem que subir a planilha acima
biblioshiny()
