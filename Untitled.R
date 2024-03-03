post <- rbind(raw_2223,raw_2122)
post <- post %>%
  filter(Primary_Category == "HS") %>%
  select(contains("SAT") & !contains("Avg") & contains("Attainment") & contains("Pct")) 
column_names <- c("Attainment_PSAT_Grade_9_School_Pct","Attainment_PSAT_Grade_10_School_Pct", "Attainment_SAT_Grade_11_School_Pct")

post <- post %>%
  filter(post$Attainment_PSAT_Grade_9_School_Pct > 0 & 
           post$Attainment_PSAT_Grade_10_School_Pct > 0 & 
           post$Attainment_SAT_Grade_11_School_Pct > 0)

eigen(cov(post))
