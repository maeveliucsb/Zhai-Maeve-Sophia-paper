library(haven)
library(dplyr)
eu_trim<-read_dta("EB2017 data.dta")
colonizers <- c("BE", "ES", "FR", "GB", "GB-GBN","GB-NIR","NL","PT")
eu_colonials <- eu_trim[eu_trim$isocntry %in% colonizers, ]
eu_col_imm<- eu_colonials %>%
  select(-contains("qb"))
eu_col_imm2<- eu_colonials %>%
  select(-contains("p6de","p6it","p6lu","p6dk","p6ie","p6gr","p6fi","p6se","p6at","p6cy","p6cz","p6ee","p6hu","p6lv","p6lt","p6mt","p6pl","p6sk","p6si","p6bg","p6ro","p6hr","p7de","p7it","p7it_r1","p7it_r2","p7lu","p7dk","p7ie","p7ie_r","p7gr","p7gr_r","p7fi","p7se","p7se_r","p7at","p7at_r","p7cy","p7cz","p7ee","p7hu","p7hu_r","p7lv","p7lt","p7pl","p7pl_r","p7sk","p7si","p7si_r","p7bg","p7ro","p7ro_r","p7hr","p7hr_r","p13"))
irrelevantlands<-c("p6de","p6it","p6lu","p6dk","p6ie","p6gr","p6fi","p6se","p6at","p6cy","p6cz","p6ee","p6hu","p6lv","p6lt","p6mt","p6pl","p6sk","p6si","p6bg","p6ro","p6hr","p7de","p7it","p7it_r1","p7it_r2","p7lu","p7dk","p7ie","p7ie_r","p7gr","p7gr_r","p7fi","p7se","p7se_r","p7at","p7at_r","p7cy","p7cz","p7ee","p7hu","p7hu_r","p7lv","p7lt","p7pl","p7pl_r","p7sk","p7si","p7si_r","p7bg","p7ro","p7ro_r","p7hr","p7hr_r","p13be","p13lu","p13es","p13fi","p13ee","p13lv","p13mt")
eu_col_imm2 <- eu_col_imm %>%
  select(-all_of(irrelevantlands))
eu_col_imm2<- eu_colonials %>% 
  select(-contains("germany","denmark","ireland", "greece","hungary","finland","sweden","austria","cyprus","czech republic","estonia","latvia","lithuania","malta","poland","slovakia","slovenia","bulgaria","romania","croatia",ignore.case = TRUE)) 