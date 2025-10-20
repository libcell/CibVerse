
## M1 - Common Ortholog Identification. 

options(timeout = 9999)

ko_list <- vector("list", length = length(species))

names(ko_list) <- species_data$Species.brief

i <- 0

for (s in species) {
  
  i <- i + 1
  
  ko_url <- paste0("http://rest.genome.jp/list/", s)
  
  ko_dt <- read.csv(ko_url, header = FALSE, sep = "\t")
  
  matches <- regexpr("K[0-9]{5}", ko_dt$V2)
  
  results <- regmatches(ko_dt$V2, matches)
  
  ko_list[[i]] <- results
  
  Sys.sleep(0.34)
  
  print(s)
}

common_orthologs <- Reduce(intersect, ko_list)

final_results <- paste("\nThere are", length(common_orthologs), 
                       "between these", nrow(species_data), "and results are as follows:\n")

cat(final_results)
print(common_orthologs)

## M2 - Responding Gene Symbols (or Entrez Ids) in Human Genome for Orthologs. 

hsa_url <- "http://rest.genome.jp/list/hsa"

ko_dt <- read.csv(hsa_url, header = FALSE, sep = "\t")

ortholog_entrezIDs <- NULL

for (i in 1:length(common_orthologs)) {
  
  ortholog_entrezIDs <- c(ortholog_entrezIDs, 
                        ko_dt$V1[grep(common_orthologs[i], ko_dt$V2)][1])
  
}

names(common_orthologs) <- ortholog_entrezIDs

 
