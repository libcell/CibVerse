
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
