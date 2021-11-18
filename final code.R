library(tidyverse)
files = list.files("Data/77V1")
file2 = paste0("Data/77V1/", files)
all_text = lapply(file2,readLines)
l1v1 = as.data.frame(all_text[1],col.names = "ndata")
l2v1 = as.data.frame(all_text[2],col.names = "ndata")
l3v1 = as.data.frame(all_text[3],col.names = "ndata")
l4v1 = as.data.frame(all_text[4],col.names = "ndata")
l5v1 = as.data.frame(all_text[5],col.names = "ndata")
l6v1 = as.data.frame(all_text[6],col.names = "ndata")
l7v1 = as.data.frame(all_text[7],col.names = "ndata")
l8v1 = as.data.frame(all_text[8],col.names = "ndata")
l9v1 = as.data.frame(all_text[9],col.names = "ndata")
l10v1 = as.data.frame(all_text[10],col.names = "ndata")
l11v1 = as.data.frame(all_text[11],col.names = "ndata")
l12v1 = as.data.frame(all_text[12],col.names = "ndata")
l13v1 = as.data.frame(all_text[13],col.names = "ndata")
l14v1 = as.data.frame(all_text[14],col.names = "ndata")
l15v1 = as.data.frame(all_text[15],col.names = "ndata")
l16v1 = as.data.frame(all_text[16],col.names = "ndata")
l17v1 = as.data.frame(all_text[17],col.names = "ndata")
l18v1 = as.data.frame(all_text[18],col.names = "ndata")




files2 = list.files("Data/77V2")
file22 = paste0("Data/77V2/", files2)
all_text2 = lapply(file22,readLines)
l1v2 = as.data.frame(all_text2[1],col.names = "ndata")
l2v2 = as.data.frame(all_text2[2],col.names = "ndata")
l4v2 = as.data.frame(all_text2[3],col.names = "ndata")
l5v2 = as.data.frame(all_text2[4],col.names = "ndata")
l6v2 = as.data.frame(all_text2[5],col.names = "ndata")
l7v2 = as.data.frame(all_text2[6],col.names = "ndata")
l8v2 = as.data.frame(all_text2[7],col.names = "ndata")
l10v2 = as.data.frame(all_text2[8],col.names = "ndata")
l11v2 = as.data.frame(all_text2[9],col.names = "ndata")
l12v2 = as.data.frame(all_text2[10],col.names = "ndata")
l13v2 = as.data.frame(all_text2[11],col.names = "ndata")
l14v2 = as.data.frame(all_text2[12],col.names = "ndata")
l16v2 = as.data.frame(all_text2[13],col.names = "ndata")
l17v2 = as.data.frame(all_text2[14],col.names = "ndata")
l18v2 = as.data.frame(all_text2[15],col.names = "ndata")
l19v2 = as.data.frame(all_text2[16],col.names = "ndata")
l20v2 = as.data.frame(all_text2[17],col.names = "ndata")

tabl1v1 = l1v1 %>% 
  mutate(Centre_code_Round = substring(ndata,1,3)) %>%
  mutate(FSU_SerialNo. = substring(ndata,4,8)) %>%
  mutate(Round = substring(ndata,9,10)) %>%
  mutate(Schedule = substring(ndata,11,13)) %>%
  mutate(Sample = substring(ndata,14,14)) %>%
  mutate(Sector = substring(ndata,15,15)) %>%
  mutate(NSS_Region = substring(ndata,16,18)) %>%
  mutate(District = substring(ndata,19,20)) %>%
  mutate(Stratum = substring(ndata,21,22)) %>%
  mutate(Sub_Stratum = substring(ndata,23,24)) %>%
  mutate(Sub_Round = substring(ndata,25,25)) %>%
  mutate(fod_sub_region = substring(ndata,26,29)) %>%
  mutate(second_stage_stratum = substring(ndata,30,30)) %>%
  mutate(Sample_hhldno = substring(ndata,31,32)) %>%
  mutate(Visitno = substring(ndata,33,33)) %>%
  mutate(level = substring(ndata,34,35)) %>%
  mutate(Filler = substring(ndata,36,40)) %>%
  mutate(Date_of_survey = substring(ndata,58,63))

tabl2v1 = l2v1 %>%
  mutate(CommonID = substring(ndata,4,33)) %>%
  mutate(Centre_code_Round = substring(ndata,1,3)) %>%
  mutate(FSU_SerialNo. = substring(ndata,4,8)) %>%
  mutate(Round = substring(ndata,9,10)) %>%
  mutate(Schedule = substring(ndata,11,13)) %>%
  mutate(Sample = substring(ndata,14,14)) %>%
  mutate(Sector = substring(ndata,15,15)) %>%
  mutate(NSS_Region = substring(ndata,16,18)) %>%
  mutate(District = substring(ndata,19,20)) %>%
  mutate(Stratum = substring(ndata,21,22)) %>%
  mutate(Sub_Stratum = substring(ndata,23,24)) %>%
  mutate(Sub_Round = substring(ndata,25,25)) %>%
  mutate(fod_sub_region = substring(ndata,26,29)) %>%
  mutate(second_stage_stratum = substring(ndata,30,30)) %>%
  mutate(Sample_hhldno = substring(ndata,31,32)) %>%
  mutate(Visitno = substring(ndata,33,33)) %>%
  mutate(level = substring(ndata,34,35)) %>%
  mutate(Filler = substring(ndata,36,38)) %>%
  mutate(Person_slno = substring(ndata,39,40)) %>%
  mutate(Relation = substring(ndata,41,41)) %>%
  mutate(Gender = substring(ndata,42,42)) %>%
  mutate(Age = substring(ndata,43,45)) %>%
  mutate(Education = substring(ndata,46,47)) %>%
  mutate(Agri_train = substring(ndata,48,48)) %>%
  mutate(Principal_activity_status_code = substring(ndata,49,50)) %>%
  mutate(Principal_activity_NIC08_code = substring(ndata,51,52)) %>%
  mutate(Subsidiary_economic_activity_status_code = substring(ndata,53,54)) %>%
  mutate(Subsidiary_economic_activity_NIC08_code  = substring(ndata,55,56)) %>%
  mutate(wage_salary = substring(ndata,57,66)) %>%
  mutate(Earning_from_pension_remittance= substring(ndata,67,76)) %>%
  mutate(Income_from_rent_of_leased_out_land= substring(ndata,77,86))


tabl3v1 = l3v1 %>% 
  mutate(CommonID = substring(ndata,4,33)) %>%
  mutate(Centre_code_Round = substring(ndata,1,3)) %>%
  mutate(FSU_SerialNo. = substring(ndata,4,8)) %>%
  mutate(Round = substring(ndata,9,10)) %>%
  mutate(Schedule = substring(ndata,11,13)) %>%
  mutate(Sample = substring(ndata,14,14)) %>%
  mutate(Sector = substring(ndata,15,15)) %>%
  mutate(NSS_Region = substring(ndata,16,18)) %>%
  mutate(District = substring(ndata,19,20)) %>%
  mutate(Stratum = substring(ndata,21,22)) %>%
  mutate(Sub_Stratum = substring(ndata,23,24)) %>%
  mutate(Sub_Round = substring(ndata,25,25)) %>%
  mutate(Fod_sub_region = substring(ndata,26,29)) %>%
  mutate(Second_stage_stratum = substring(ndata,30,30)) %>%
  mutate(Sample_hhldno = substring(ndata,31,32)) %>%
  mutate(Visitno = substring(ndata,33,33)) %>%
  mutate(level = substring(ndata,34,35)) %>%
  mutate(Filler = substring(ndata,36,40)) %>%
  mutate(Hldsize = substring(ndata,41,43)) %>% 
  mutate(Religion = substring(ndata,44,44)) %>% 
  mutate(Social_group = substring(ndata,45,45)) %>% 
  mutate(Hldclss = substring(ndata,46,46)) %>% 
  mutate(Purchase_in_month = substring(ndata,47,56)) %>% 
  mutate(Imputed_stock_cost = substring(ndata,57,66)) %>% 
  mutate(Inkind_consumption = substring(ndata,67,76)) %>% 
  mutate(Durable_365 = substring(ndata,77,86)) %>% 
  mutate(Consumer_monthly_expn = substring(ndata,87,96)) %>%
  mutate(Value_agri_production = substring(ndata,97,97)) %>%
  mutate(Dwelling = substring(ndata,98,98)) %>%
  mutate(Type_of_stru= substring(ndata,99,99)) %>%
  mutate(Any_member_bankac = substring(ndata,100,100)) %>%
  mutate(Any_member_MGNREGA = substring(ndata,101,101)) %>%
  mutate(Any_MGNREGA_365 = substring(ndata,102,102)) %>%
  mutate(Any_farmer_org = substring(ndata,103,103)) %>%
  mutate(Any_KCC = substring(ndata,104,104)) %>%
  mutate(Any_SHC = substring(ndata,105,105)) %>%
  mutate(Maintain_SHC = substring(ndata,106,106)) %>%
  mutate(Any_AHC = substring(ndata,107,107)) %>%
  mutate(Any_insu_PMFBY = substring(ndata,108,108)) %>%
  mutate(Multi =substring(ndata,130,139)) 



tabl4v1 = l4v1 %>% 
  mutate(CommonID = substring(ndata,4,32)) %>%
  mutate(Centre_code_Round = substring(ndata,1,3)) %>%
  mutate(FSU_SerialNo. = substring(ndata,4,8)) %>%
  mutate(Round = substring(ndata,9,10)) %>%
  mutate(Schedule = substring(ndata,11,13)) %>%
  mutate(Sample = substring(ndata,14,14)) %>%
  mutate(Sector = substring(ndata,15,15)) %>%
  mutate(NSS_Region = substring(ndata,16,18)) %>%
  mutate(District = substring(ndata,19,20)) %>%
  mutate(Stratum = substring(ndata,21,22)) %>%
  mutate(Sub_Stratum = substring(ndata,23,24)) %>%
  mutate(Sub_Round = substring(ndata,25,25)) %>%
  mutate(Fod_sub_region = substring(ndata,26,29)) %>%
  mutate(Second_stage_stratum = substring(ndata,30,30)) %>%
  mutate(Sample_hhldno = substring(ndata,31,32)) %>% 
  mutate(Visitno = substring(ndata,33,33)) %>%
  mutate(level = substring(ndata,34,35)) %>%
  mutate(Filler = substring(ndata,36,38)) %>%
  mutate(Srl_no = substring(ndata,39,40)) %>%
  mutate(Land_area = substring(ndata,41,46)) %>%
  mutate(Used_or_not = substring(ndata,47,47)) %>%
  mutate(Used_for_shifting_jhum = substring(ndata,48,53)) %>%
  mutate(Used_for_other_than_shifting_jhum = substring(ndata,54,59)) %>%
  mutate(Farming_animals = substring(ndata,60,65)) %>% 
  mutate(Both_crop_animal = substring(ndata,66,71)) %>%
  mutate(Other_agri_use = substring(ndata,72,77)) %>% 
  mutate(Not_used_in_agri = substring(ndata,78,83)) %>% 
  mutate(Major_crop_or_animal = substring(ndata,84,85)) %>% 
  mutate(If_any_part_irrigated = substring(ndata,86,86)) %>%
  mutate(Area_irrigated = substring(ndata,87,92)) %>%
  mutate(Major_source_irrigation = substring(ndata,93,93)) %>% 
  mutate(Second_source_of_irrigation = substring(ndata,94,95)) %>%
  mutate(Tenur_of_lease = substring(ndata,96,96)) %>%
  mutate(Area_under_fiexdmoney_lease =substring(ndata,97,102)) %>% 
  mutate(Area_under_fiexdproduce_lease=substring(ndata,103,108)) %>% 
  mutate(Area_under_shareproduce_lease=substring(ndata,109,114)) %>%
  mutate(Area_under_noterms_lease=substring(ndata,115,120)) %>% 
  mutate(Area_under_otherterms_lease=substring(ndata,121,126)) %>% 
  mutate(Area_hect = as.numeric(Land_area)/2.471) %>% 
  mutate(Multi = substring(ndata,130,139)) %>% 
  mutate(Catagory_of_holding = ifelse(Area_hect < 2,"Small and Marginal",
                                      ifelse(Area_hect < 4,"Medium","Large")))
                                            








tabl5v1 = l5v1 %>%
  mutate(CommonID = substring(ndata,4,33)) %>%
  mutate(Centre_code_Round = substring(ndata,1,3)) %>%
  mutate(FSU_SerialNo. = substring(ndata,4,8)) %>%
  mutate(Round = substring(ndata,9,10)) %>%
  mutate(Schedule = substring(ndata,11,13)) %>%
  mutate(Sample = substring(ndata,14,14)) %>%
  mutate(Sector = substring(ndata,15,15)) %>%
  mutate(NSS_Region = substring(ndata,16,18)) %>%
  mutate(District = substring(ndata,19,20)) %>%
  mutate(Stratum = substring(ndata,21,22)) %>%
  mutate(Sub_Stratum = substring(ndata,23,24)) %>%
  mutate(Sub_Round = substring(ndata,25,25)) %>%
  mutate(Fod_sub_region = substring(ndata,26,29)) %>%
  mutate(Second_stage_stratum = substring(ndata,30,30)) %>%
  mutate(Sample_hhldno = substring(ndata,31,32)) %>%
  mutate(Visitno = substring(ndata,33,33)) %>%
  mutate(level = substring(ndata,34,35)) %>%
  mutate(Filler = substring(ndata,36,40)) %>%
  mutate(Jointly_or_Individually = substring(ndata,41,41)) %>% 
  mutate(Type_of_holding = substring(ndata,42,42)) %>% 
  mutate(Main_use_of_holding = substring(ndata,43,43)) %>% 
  mutate(No_of_percels = substring(ndata,44,46)) %>% 
  mutate(No_of_crop_harvested = substring(ndata,47,48))


tabl6v1 = l6v1 %>%
  mutate(CommonID = substring(ndata,4,32)) %>%
  mutate(Centre_code_Round = substring(ndata,1,3)) %>%
  mutate(FSU_SerialNo. = substring(ndata,4,8)) %>%
  mutate(Round = substring(ndata,9,10)) %>%
  mutate(Schedule = substring(ndata,11,13)) %>%
  mutate(Sample = substring(ndata,14,14)) %>%
  mutate(Sector = substring(ndata,15,15)) %>%
  mutate(NSS_Region = substring(ndata,16,18)) %>%
  mutate(District = substring(ndata,19,20)) %>%
  mutate(Stratum = substring(ndata,21,22)) %>%
  mutate(Sub_Stratum = substring(ndata,23,24)) %>%
  mutate(Sub_Round = substring(ndata,25,25)) %>%
  mutate(Fod_sub_region = substring(ndata,26,29)) %>%
  mutate(Second_stage_stratum = substring(ndata,30,30)) %>%
  mutate(Sample_hhldno = substring(ndata,31,32)) %>%
  mutate(Visitno = substring(ndata,33,33)) %>%
  mutate(level = substring(ndata,34,35)) %>%
  mutate(Filler = substring(ndata,36,39)) %>%
  mutate(Slno = substring(ndata,40,40)) %>% 
  mutate(Crop_code = substring(ndata,41,44)) %>% 
  mutate(Unit_code = substring(ndata,45,45)) %>% 
  mutate(Land_area_irrigated = substring(ndata,46,51)) %>% 
  mutate(Quantity_produced = substring(ndata,52,61)) %>% 
  mutate(Area_of_unirrigated_land =substring(ndata,62,67)) %>% 
  mutate(Quantity_produced_from_unirrigated = substring(ndata,68,77)) %>% 
  mutate(Toatl_quantity = substring(ndata,78,87)) %>% 
  mutate(Area_of_land_under_preharvest = substring(ndata,88,93)) %>%
  mutate(Whom_to_sold = substring(ndata,94,95)) %>%
  mutate(Satisfied_with_the_outcome = substring(ndata,96,96)) %>%
  mutate(Major_disposal_quantity = substring(ndata,97,106)) %>%
  mutate(Major_disposal_sale_value = substring(ndata,107,116)) %>%
  mutate(Other_disposal_quantity = substring(ndata,117,126)) %>% 
  mutate(Multi = substring(ndata,130,139))



tabl6v1$Whom_to_sold = recode_factor(tabl6v1$Whom_to_sold,
                                     `01` = "Local Market",
                                     `02` = "APMC Market",
                                     `03` = "Input Dealers",
                                     `04` = "Cooperative",
                                     `05` = "Govt. Agencies",
                                     `06` = "FPO",
                                     `07` = "Private Processors",
                                     `08` = "Contract farming sponsors or Companies",
                                     `09` = "Others")


tabl6v1$Satisfied_with_the_outcome = recode_factor(tabl6v1$Satisfied_with_the_outcome,
                                                   `1` = "Satisfactory",
                                                   `2` = "Lower Market Price",
                                                   `3` = "Delayed Payment",
                                                   `4` = "Deductions for Loans",
                                                   `5` = "Faulty weighing",
                                                   `9` = "Other Cause")


tabl6v1$Satisfied_with_the_outcome = recode_factor(tabl6v1$Satisfied_with_the_outcome,
                                                   `1` = "Satisfactory",
                                                   `2` = "Non-Satisfactory",
                                                   `3` = "Non-Satisfactory",
                                                   `4` = "Non-Satisfactory",
                                                   `5` = "Non-Satisfactory",
                                                   `9` = "Non-Satisfactory")




tabl7v1 = l7v1 %>% 
  mutate(CommonID = substring(ndata,4,33)) %>%
  mutate(Centre_code_Round = substring(ndata,1,3)) %>%
  mutate(FSU_SerialNo. = substring(ndata,4,8)) %>%
  mutate(Round = substring(ndata,9,10)) %>%
  mutate(Schedule = substring(ndata,11,13)) %>%
  mutate(Sample = substring(ndata,14,14)) %>%
  mutate(Sector = substring(ndata,15,15)) %>%
  mutate(NSS_Region = substring(ndata,16,18)) %>%
  mutate(District = substring(ndata,19,20)) %>%
  mutate(Stratum = substring(ndata,21,22)) %>%
  mutate(Sub_Stratum = substring(ndata,23,24)) %>%
  mutate(Sub_Round = substring(ndata,25,25)) %>%
  mutate(Fod_sub_region = substring(ndata,26,29)) %>%
  mutate(Second_stage_stratum = substring(ndata,30,30)) %>%
  mutate(Sample_hhldno = substring(ndata,31,32)) %>%
  mutate(Visitno = substring(ndata,33,33)) %>%
  mutate(level = substring(ndata,34,35)) %>%
  mutate(Filler = substring(ndata,36,39)) %>%
  mutate(Srlno = substring(ndata,40,40)) %>%
  mutate(Crop_code = substring(ndata,41,44)) %>%
  mutate(Other_disposal_sale_value = substring(ndata,45,54)) %>%
  mutate(All_disposal_quantity = substring(ndata,55,64)) %>%
  mutate(All_disposal_sale_value = substring(ndata,65,74)) %>%
  mutate(Rate = substring(ndata,75,84)) %>%
  mutate(Value_per_hervest_sale = substring(ndata,85,94)) %>%
  mutate(Value_of_harvested_produce = substring(ndata,95,104)) %>%
  mutate(Value_of_by_products = substring(ndata,105,114)) %>%
  mutate(Total_value = substring(ndata,115,124))


  
tabl8v1 = l8v1 %>%
  mutate(CommonID = substring(ndata,4,33)) %>%
  mutate(Centre_code_Round = substring(ndata,1,3)) %>%
  mutate(FSU_SerialNo. = substring(ndata,4,8)) %>%
  mutate(Round = substring(ndata,9,10)) %>%
  mutate(Schedule = substring(ndata,11,13)) %>%
  mutate(Sample = substring(ndata,14,14)) %>%
  mutate(Sector = substring(ndata,15,15)) %>%
  mutate(NSS_Region = substring(ndata,16,18)) %>%
  mutate(District = substring(ndata,19,20)) %>%
  mutate(Stratum = substring(ndata,21,22)) %>%
  mutate(Sub_Stratum = substring(ndata,23,24)) %>%
  mutate(Sub_Round = substring(ndata,25,25)) %>%
  mutate(Fod_sub_region = substring(ndata,26,29)) %>%
  mutate(Second_stage_stratum = substring(ndata,30,30)) %>%
  mutate(Sample_hhldno = substring(ndata,31,32)) %>%
  mutate(Visitno = substring(ndata,33,33)) %>%
  mutate(level = substring(ndata,34,35)) %>%
  mutate(Filler = substring(ndata,36,38)) %>%
  mutate(Serial_no = substring(ndata,39,40)) %>%
  mutate(Serial_no_of_crops = substring(ndata,41,41)) %>%
  mutate(Crop_code = substring(ndata,42,45)) %>%
  mutate(Inputs_from_where_procured = substring(ndata,46,47)) %>%
  mutate(Inputs_quality_code = substring(ndata,48,48)) %>%    
  mutate(Inputs_paid_out_expenses = substring(ndata,49,60)) %>%
  mutate(Inputs_imputed_expenses = substring(ndata,61,72))



tabl4v2 = l4v2 %>% 
  mutate(CommonID = substring(ndata,4,32)) %>%
  mutate(Centre_code_Round = substring(ndata,1,3)) %>%
  mutate(FSU_SerialNo. = substring(ndata,4,8)) %>%
  mutate(Round = substring(ndata,9,10)) %>%
  mutate(Schedule = substring(ndata,11,13)) %>%
  mutate(Sample = substring(ndata,14,14)) %>%
  mutate(Sector = substring(ndata,15,15)) %>%
  mutate(NSS_Region = substring(ndata,16,18)) %>%
  mutate(District = substring(ndata,19,20)) %>%
  mutate(Stratum = substring(ndata,21,22)) %>%
  mutate(Sub_Stratum = substring(ndata,23,24)) %>%
  mutate(Sub_Round = substring(ndata,25,25)) %>%
  mutate(Fod_sub_region = substring(ndata,26,29)) %>%
  mutate(Second_stage_stratum = substring(ndata,30,30)) %>%
  mutate(Sample_hhldno = substring(ndata,31,32)) %>% 
  mutate(Visitno = substring(ndata,33,33)) %>%
  mutate(level = substring(ndata,34,35)) %>%
  mutate(Filler = substring(ndata,36,38)) %>%
  mutate(Srl_no = substring(ndata,39,40)) %>%
  mutate(Land_area = substring(ndata,41,46)) %>%
  mutate(Used_or_not = substring(ndata,47,47)) %>%
  mutate(Used_for_shifting_jhum = substring(ndata,48,53)) %>%
  mutate(Used_for_other_than_shifting_jhum = substring(ndata,54,59)) %>%
  mutate(Farming_animals = substring(ndata,60,65)) %>% 
  mutate(Both_crop_animal = substring(ndata,66,71)) %>%
  mutate(Other_agri_use = substring(ndata,72,77)) %>% 
  mutate(Not_used_in_agri = substring(ndata,78,83)) %>% 
  mutate(Major_crop_or_animal = substring(ndata,84,85)) %>% 
  mutate(If_any_part_irrigated = substring(ndata,86,86)) %>%
  mutate(Area_irrigated = substring(ndata,87,92)) %>%
  mutate(Major_source_irrigation = substring(ndata,93,93)) %>% 
  mutate(Second_source_of_irrigation = substring(ndata,94,95)) %>%
  mutate(Tenur_of_lease = substring(ndata,96,96)) %>%
  mutate(Area_under_fiexdmoney_lease =substring(ndata,97,102)) %>% 
  mutate(Area_under_fiexdproduce_lease=substring(ndata,103,108)) %>% 
  mutate(Area_under_shareproduce_lease=substring(ndata,109,114)) %>%
  mutate(Area_under_noterms_lease=substring(ndata,115,120)) %>% 
  mutate(Area_under_otherterms_lease=substring(ndata,121,126)) %>% 
  mutate(Area_hect = as.numeric(Land_area)/2.471) %>% 
  mutate(Multi = substring(ndata,130,139)) %>% 
  mutate(Catagory_of_holding = ifelse(Area_hect < 2,"Small and Marginal",
                                      ifelse(Area_hect < 4,"Medium","Large")))




tabl6v2 = l6v2 %>%
  mutate(CommonID = substring(ndata,4,32)) %>%
  mutate(Centre_code_Round = substring(ndata,1,3)) %>%
  mutate(FSU_SerialNo. = substring(ndata,4,8)) %>%
  mutate(Round = substring(ndata,9,10)) %>%
  mutate(Schedule = substring(ndata,11,13)) %>%
  mutate(Sample = substring(ndata,14,14)) %>%
  mutate(Sector = substring(ndata,15,15)) %>%
  mutate(NSS_Region = substring(ndata,16,18)) %>%
  mutate(District = substring(ndata,19,20)) %>%
  mutate(Stratum = substring(ndata,21,22)) %>%
  mutate(Sub_Stratum = substring(ndata,23,24)) %>%
  mutate(Sub_Round = substring(ndata,25,25)) %>%
  mutate(Fod_sub_region = substring(ndata,26,29)) %>%
  mutate(Second_stage_stratum = substring(ndata,30,30)) %>%
  mutate(Sample_hhldno = substring(ndata,31,32)) %>%
  mutate(Visitno = substring(ndata,33,33)) %>%
  mutate(level = substring(ndata,34,35)) %>%
  mutate(Filler = substring(ndata,36,39)) %>%
  mutate(Slno = substring(ndata,40,40)) %>% 
  mutate(Crop_code = substring(ndata,41,44)) %>% 
  mutate(Unit_code = substring(ndata,45,45)) %>% 
  mutate(Land_area_irrigated = substring(ndata,46,51)) %>% 
  mutate(Quantity_produced = substring(ndata,52,61)) %>% 
  mutate(Area_of_unirrigated_land =substring(ndata,62,67)) %>% 
  mutate(Quantity_produced_from_unirrigated = substring(ndata,68,77)) %>% 
  mutate(Toatl_quantity = substring(ndata,78,87)) %>% 
  mutate(Area_of_land_under_preharvest = substring(ndata,88,93)) %>%
  mutate(Whom_to_sold = substring(ndata,94,95)) %>%
  mutate(Satisfied_with_the_outcome = substring(ndata,96,96)) %>%
  mutate(Major_disposal_quantity = substring(ndata,97,106)) %>%
  mutate(Major_disposal_sale_value = substring(ndata,107,116)) %>%
  mutate(Other_disposal_quantity = substring(ndata,117,126)) %>% 
  mutate(Multi = substring(ndata,130,139))



tabl6v2$Whom_to_sold = recode_factor(tabl6v2$Whom_to_sold,
                                     `01` = "Local Market",
                                     `02` = "APMC Market",
                                     `03` = "Input Dealers",
                                     `04` = "Cooperative",
                                     `05` = "Govt. Agencies",
                                     `06` = "FPO",
                                     `07` = "Private Processors",
                                     `08` = "Contract farming sponsors or Companies",
                                     `09` = "Others")


tabl6v1$Satisfied_with_the_outcome = recode_factor(tabl6v1$Satisfied_with_the_outcome,
                                                   `1` = "Satisfactory",
                                                   `2` = "Lower Market Price",
                                                   `3` = "Delayed Payment",
                                                   `4` = "Deductions for Loans",
                                                   `5` = "Faulty weighing",
                                                   `9` = "Other Cause")


tabl6v2$Satisfied_with_the_outcome = recode_factor(tabl6v2$Satisfied_with_the_outcome,
                                                   `1` = "Satisfactory",
                                                   `2` = "Non-Satisfactory",
                                                   `3` = "Non-Satisfactory",
                                                   `4` = "Non-Satisfactory",
                                                   `5` = "Non-Satisfactory",
                                                   `9` = "Non-Satisfactory")



tabl4v1$Srl_no = recode_factor(tabl4v1$Srl_no, `01` = "NH_Owned_and_Possessed",
                               `02` = "NH_Leasedin_Recorded",
                               `03` = "NH_Leasedin_not_Recorded",
                               `04` = "NH_Otherwise_Possessed",
                               `05` = "NH_Leased_out",
                               `06` = "H_Owned_and_Possessed",
                               `07` = "H_Leasedin_Recorded",
                               `08` = "H_Leasedin_not_Recorded",
                               `09` = "H_Otherwise_Possessed",
                               `10` = "Total_Land")






worktab = left_join(trtr,tabl6v1,by = "CommonID")

trtr2 = tabl4v2 %>% 
  filter(Srl_no == "01")

worktab2 = left_join(trtr,tabl6v2,by = "CommonID")


trtr = tabl4v1 %>% 
  filter(Srl_no == "01")




b5wt = tabl4v1 %>% 
  select(CommonID,Srl_no,Major_crop_or_animal,Area_hect,Catagory_of_holding,Multi) %>% 
  filter(Srl_no == "01")
b6wt = tabl6v1 %>% 
  select(CommonID,Slno,Crop_code,Whom_to_sold,Satisfied_with_the_outcome) %>% 
  filter(Slno =="1") %>% 
  filter(Whom_to_sold != "  ")
tab1nr = left_join(b6wt,b5wt, by="CommonID")

tab1nr = tab1nr %>% 
  drop_na()

tab1nr %>% 
  filter(Crop_code == "0806") %>% 
  filter(Whom_to_sold == "Local Market") %>% 
  group_by(Whom_to_sold,Satisfied_with_the_outcome,Catagory_of_holding) %>% 
  count(Multi)
  ggplot(aes(y=n,x= Catagory_of_holding, fill= Satisfied_with_the_outcome))+
  geom_col(position = "fill")+
  labs(title = "Distribution of Farmer Groups With Satisfaction Status",
       subtitle = "Vegetables sold in APMC Market",
       x = "",
       y = " Proportion")+theme_clean()+ theme(legend.title = element_blank())

my_col = c('#F45252', '#3cb44b', '#ffe119', '#4363d8', '#f58231', '#911eb4', '#46f0f0', '#f032e6', '#bcf60c')  
    
tab1nr %>% 
  filter(Major_crop_or_animal == "07"|Major_crop_or_animal == "08") %>% 
  group_by(Catagory_of_holding,Whom_to_sold) %>% 
  count(Catagory_of_holding) %>% 
  ggplot(aes(y = n,x = Catagory_of_holding, fill = Whom_to_sold))+
  geom_col(position = "fill")+
  scale_fill_manual(values = my_col)+
  theme_light()+
  labs(title = "Market Channel Access of Different Farmer Groups",
       subtitle = "For Vegetables : India",
       x="",
       y = " Proportion",
       caption = "")+theme(legend.title = element_blank())

rtab2 = tab2nr %>% 
  filter(Major_crop_or_animal == "07"|Major_crop_or_animal == "08") %>% 
  group_by(Catagory_of_holding,Whom_to_sold) %>% 
  count(Catagory_of_holding)


write.csv(rtab, file = "Cere.csv")


b5wt2 = tabl4v2 %>% 
  select(CommonID,Srl_no,Major_crop_or_animal,Area_hect,Catagory_of_holding,Multi) %>% 
  filter(Srl_no == "01")
b6wt2 = tabl6v2 %>% 
  select(CommonID,Slno,Crop_code,Whom_to_sold,Satisfied_with_the_outcome) %>% 
  filter(Slno =="1") %>% 
  filter(Whom_to_sold != "  ")
tab2nr = left_join(b6wt2,b5wt2, by="CommonID")

tab2nr = tab2nr %>% 
  drop_na()

tab2nr %>% 
  filter(Major_crop_or_animal == "07"|Major_crop_or_animal == "08") %>% 
  group_by(Catagory_of_holding,Whom_to_sold) %>% 
  count(Catagory_of_holding) %>% 
  ggplot(aes(y = n,x = Catagory_of_holding, fill = Whom_to_sold))+
  geom_col(position = "fill")+
  scale_fill_manual(values = my_col)+
  theme_light()+
  labs(title = "Market Channel Access of Different Farmer Groups",
       subtitle = "For Vegetables : India",
       x="",
       y = " Proportion",
       caption = "")+theme(legend.title = element_blank())
