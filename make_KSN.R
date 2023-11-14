library(OmnipathR)

KSN <- OmnipathR::import_omnipath_enzsub()
KSN <- KSN[!is.na(KSN$references),]
KSN <- KSN[!KSN$sources == "KEA",]
KSN$target <- paste(KSN$substrate_genesymbol, paste(KSN$residue_type, KSN$residue_offset, sep = ""), sep = "_")
KSN$mor <- ifelse(KSN$modification == "phosphorylation", 1, ifelse(KSN$modification == "dephosphorylation", -1, NA))
KSN <- KSN[,c(3,13,14)]
names(KSN) <- c("source","target","mor")
KSN$enzsub <- paste(KSN$source, KSN$target, sep = "_")
dubs <- KSN[duplicated(KSN$enzsub), "enzsub", drop = T]
KSN <- KSN[-which(KSN$enzsub %in% dubs),]
KSN <- KSN[,-4]

save(KSN, file = "KSN.RDdata")
