library(readxl)
library(stringr)
library(dplyr)
library(writexl)

# 2017 ############################################

JAN <- read_excel("Projeto Peritoniostomia/2017/01-2017.xlsx")
JAN <- data.frame(JAN$...2, JAN$`JANEIRO/2017`, JAN$...10, JAN$...24)
names(JAN) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JAN$cirurgia <- tolower(JAN$cirurgia)
JAN$diagnostico <- tolower(JAN$diagnostico)
JAN1 <- JAN[apply(JAN, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JAN1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2017\\JAN.xlsx")

FEV <- read_excel("Projeto Peritoniostomia/2017/02-2017.xlsx")
FEV <- data.frame(FEV$...2, FEV$`FEVEREIRO/2017`, FEV$...10, FEV$...24)
names(FEV) <- c("prontuario", "nome", "cirurgia", "diagnostico")
FEV$cirurgia <- tolower(FEV$cirurgia)
FEV$diagnostico <- tolower(FEV$diagnostico)
FEV1 <- FEV[apply(FEV, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(FEV1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2017\\FEV.xlsx")

MAR <- read_excel("Projeto Peritoniostomia/2017/03-2017.xlsx")
MAR <- data.frame(MAR$...2, MAR$`MARÇO/2017`, MAR$...10, MAR$...24)
names(MAR) <- c("prontuario", "nome", "cirurgia", "diagnostico")
MAR$cirurgia <- tolower(MAR$cirurgia)
MAR$diagnostico <- tolower(MAR$diagnostico)
MAR1 <- MAR[apply(MAR, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(MAR1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2017\\MAR.xlsx")

ABR <- read_excel("Projeto Peritoniostomia/2017/04-2017.xlsx")
ABR <- data.frame(ABR$...2, ABR$`ABRIL/2017`, ABR$...10, ABR$...24)
names(ABR) <- c("prontuario", "nome", "cirurgia", "diagnostico")
ABR$cirurgia <- tolower(ABR$cirurgia)
ABR$diagnostico <- tolower(ABR$diagnostico)
ABR1 <- ABR[apply(ABR, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(ABR1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2017\\ABR.xlsx")

MAI <- read_excel("Projeto Peritoniostomia/2017/05-2017.xlsx")
MAI <- data.frame(MAI$...2, MAI$`MAIO/2017`, MAI$...10, MAI$...24)
names(MAI) <- c("prontuario", "nome", "cirurgia", "diagnostico")
MAI$cirurgia <- tolower(MAI$cirurgia)
MAI$diagnostico <- tolower(MAI$diagnostico)
MAI1 <- MAI[apply(MAI, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(MAI1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2017\\MAI.xlsx")

JUN <- read_excel("Projeto Peritoniostomia/2017/06-2017.xlsx")
JUN <- data.frame(JUN$...2, JUN$`Centro Cirúrgico`, JUN$...10, JUN$...24)
names(JUN) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JUN$cirurgia <- tolower(JUN$cirurgia)
JUN$diagnostico <- tolower(JUN$diagnostico)
JUN1 <- JUN[apply(JUN, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JUN1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2017\\JUN.xlsx")

JUL <- read_excel("Projeto Peritoniostomia/2017/07-2017.xlsx")
JUL <- data.frame(JUL$...2, JUL$`Centro Cirúrgico`, JUL$...10, JUL$...24)
names(JUL) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JUL$cirurgia <- tolower(JUL$cirurgia)
JUL$diagnostico <- tolower(JUL$diagnostico)
JUL1 <- JUL[apply(JUL, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JUL1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2017\\JUL.xlsx")

AGO <- read_excel("Projeto Peritoniostomia/2017/08-2017.xlsx")
AGO <- data.frame(AGO$...2, AGO$`Centro Cirúrgico`, AGO$...10, AGO$...24)
names(AGO) <- c("prontuario", "nome", "cirurgia", "diagnostico")
AGO$cirurgia <- tolower(AGO$cirurgia)
AGO$diagnostico <- tolower(AGO$diagnostico)
AGO1 <- AGO[apply(AGO, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(AGO1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2017\\AGO.xlsx")

SET <- read_excel("Projeto Peritoniostomia/2017/09-2017.xlsx")
SET <- data.frame(SET$...2, SET$`Centro Cirúrgico`, SET$...10, SET$...24)
names(SET) <- c("prontuario", "nome", "cirurgia", "diagnostico")
SET$cirurgia <- tolower(SET$cirurgia)
SET$diagnostico <- tolower(SET$diagnostico)
SET1 <- SET[apply(SET, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(SET1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2017\\SET.xlsx")

OUT <- read_excel("Projeto Peritoniostomia/2017/10-2017.xlsx")
OUT <- data.frame(OUT$...2, OUT$`Centro Cirúrgico`, OUT$...10, OUT$...24)
names(OUT) <- c("prontuario", "nome", "cirurgia", "diagnostico")
OUT$cirurgia <- tolower(OUT$cirurgia)
OUT$diagnostico <- tolower(OUT$diagnostico)
OUT1 <- OUT[apply(OUT, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(OUT1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2017\\OUT.xlsx")

NOV <- read_excel("Projeto Peritoniostomia/2017/11-2017.xlsx")
NOV <- data.frame(NOV$...2, NOV$`Centro Cirúrgico`, NOV$...10, NOV$...24)
names(NOV) <- c("prontuario", "nome", "cirurgia", "diagnostico")
NOV$cirurgia <- tolower(NOV$cirurgia)
NOV$diagnostico <- tolower(NOV$diagnostico)
NOV1 <- NOV[apply(NOV, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(NOV1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2017\\NOV.xlsx")

DEZ <- read_excel("Projeto Peritoniostomia/2017/12-2017.xlsx")
DEZ <- data.frame(DEZ$...2, DEZ$`Centro Cirúrgico`, DEZ$...10, DEZ$...24)
names(DEZ) <- c("prontuario", "nome", "cirurgia", "diagnostico")
DEZ$cirurgia <- tolower(DEZ$cirurgia)
DEZ$diagnostico <- tolower(DEZ$diagnostico)
DEZ1 <- DEZ[apply(DEZ, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(DEZ1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2017\\DEZ.xlsx")

# 2018 ############################################

JAN <- read_excel("Projeto Peritoniostomia/2018/JANEIRO-2018.xlsx")
JAN <- data.frame(JAN$...2, JAN$`JANEIRO/2018`, JAN$...10, JAN$...24)
names(JAN) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JAN$cirurgia <- tolower(JAN$cirurgia)
JAN$diagnostico <- tolower(JAN$diagnostico)
JAN1 <- JAN[apply(JAN, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JAN1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2018\\JAN.xlsx")

FEV <- read_excel("Projeto Peritoniostomia/2018/FEVEREIRO-2018.xlsx")
FEV <- data.frame(FEV$...2, FEV$`FEVEREIRO/2018`, FEV$...10, FEV$...24)
names(FEV) <- c("prontuario", "nome", "cirurgia", "diagnostico")
FEV$cirurgia <- tolower(FEV$cirurgia)
FEV$diagnostico <- tolower(FEV$diagnostico)
FEV1 <- FEV[apply(FEV, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(FEV1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2018\\FEV.xlsx")

MAR <- read_excel("Projeto Peritoniostomia/2018/MARÇO-2018.xlsx")
MAR <- data.frame(MAR$...2, MAR$`MARÇO/2018`, MAR$...10, MAR$...24)
names(MAR) <- c("prontuario", "nome", "cirurgia", "diagnostico")
MAR$cirurgia <- tolower(MAR$cirurgia)
MAR$diagnostico <- tolower(MAR$diagnostico)
MAR1 <- MAR[apply(MAR, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(MAR1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2018\\MAR.xlsx")

ABR <- read_excel("Projeto Peritoniostomia/2018/ABRIL-2018.xlsx")
ABR <- data.frame(ABR$...2, ABR$`ABRIL/2018`, ABR$...10, ABR$...24)
names(ABR) <- c("prontuario", "nome", "cirurgia", "diagnostico")
ABR$cirurgia <- tolower(ABR$cirurgia)
ABR$diagnostico <- tolower(ABR$diagnostico)
ABR1 <- ABR[apply(ABR, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(ABR1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2018\\ABR.xlsx")

MAI <- read_excel("Projeto Peritoniostomia/2018/MAIO-2018.xlsx")
MAI <- data.frame(MAI$...2, MAI$`MAIO/2018`, MAI$...10, MAI$...24)
names(MAI) <- c("prontuario", "nome", "cirurgia", "diagnostico")
MAI$cirurgia <- tolower(MAI$cirurgia)
MAI$diagnostico <- tolower(MAI$diagnostico)
MAI1 <- MAI[apply(MAI, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(MAI1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2018\\MAI.xlsx")

JUN <- read_excel("Projeto Peritoniostomia/2018/JUNHO-2018.xlsx")
JUN <- data.frame(JUN$...2, JUN$`Centro Cirúrgico`, JUN$...10, JUN$...24)
names(JUN) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JUN$cirurgia <- tolower(JUN$cirurgia)
JUN$diagnostico <- tolower(JUN$diagnostico)
JUN1 <- JUN[apply(JUN, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JUN1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2018\\JUN.xlsx")

JUL <- read_excel("Projeto Peritoniostomia/2018/JULHO-2018.xlsx")
JUL <- data.frame(JUL$...2, JUL$`Centro Cirúrgico`, JUL$...10, JUL$...24)
names(JUL) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JUL$cirurgia <- tolower(JUL$cirurgia)
JUL$diagnostico <- tolower(JUL$diagnostico)
JUL1 <- JUL[apply(JUL, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JUL1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2018\\JUL.xlsx")

AGO <- read_excel("Projeto Peritoniostomia/2018/AGOSTO-2018.xlsx")
AGO <- data.frame(AGO$...2, AGO$`Centro Cirúrgico`, AGO$...10, AGO$...24)
names(AGO) <- c("prontuario", "nome", "cirurgia", "diagnostico")
AGO$cirurgia <- tolower(AGO$cirurgia)
AGO$diagnostico <- tolower(AGO$diagnostico)
AGO1 <- AGO[apply(AGO, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(AGO1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2018\\AGO.xlsx")

SET <- read_excel("Projeto Peritoniostomia/2018/SETEMBRO-2018.xlsx")
SET <- data.frame(SET$...2, SET$`Centro Cirúrgico`, SET$...10, SET$...24)
names(SET) <- c("prontuario", "nome", "cirurgia", "diagnostico")
SET$cirurgia <- tolower(SET$cirurgia)
SET$diagnostico <- tolower(SET$diagnostico)
SET1 <- SET[apply(SET, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(SET1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2018\\SET.xlsx")

OUT <- read_excel("Projeto Peritoniostomia/2018/OUTUBRO-2018.xlsx")
OUT <- data.frame(OUT$...2, OUT$`Centro Cirúrgico`, OUT$...10, OUT$...24)
names(OUT) <- c("prontuario", "nome", "cirurgia", "diagnostico")
OUT$cirurgia <- tolower(OUT$cirurgia)
OUT$diagnostico <- tolower(OUT$diagnostico)
OUT1 <- OUT[apply(OUT, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(OUT1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2018\\OUT.xlsx")

NOV <- read_excel("Projeto Peritoniostomia/2018/NOVEMBRO-2018.xlsx")
NOV <- data.frame(NOV$...2, NOV$`Centro Cirúrgico`, NOV$...10, NOV$...24)
names(NOV) <- c("prontuario", "nome", "cirurgia", "diagnostico")
NOV$cirurgia <- tolower(NOV$cirurgia)
NOV$diagnostico <- tolower(NOV$diagnostico)
NOV1 <- NOV[apply(NOV, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(NOV1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2018\\NOV.xlsx")

DEZ <- read_excel("Projeto Peritoniostomia/2018/DEZEMBRO-2018.xlsx")
DEZ <- data.frame(DEZ$...2, DEZ$`Centro Cirúrgico`, DEZ$...10, DEZ$...24)
names(DEZ) <- c("prontuario", "nome", "cirurgia", "diagnostico")
DEZ$cirurgia <- tolower(DEZ$cirurgia)
DEZ$diagnostico <- tolower(DEZ$diagnostico)
DEZ1 <- DEZ[apply(DEZ, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(DEZ1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2018\\DEZ.xlsx")

# 2019 ############################################

JAN <- read_excel("Projeto Peritoniostomia/2019/1 - JANEIRO-2019.xlsx")
JAN <- data.frame(JAN$...2, JAN$`JANEIRO/2019`, JAN$...10, JAN$...24)
names(JAN) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JAN$cirurgia <- tolower(JAN$cirurgia)
JAN$diagnostico <- tolower(JAN$diagnostico)
JAN1 <- JAN[apply(JAN, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JAN1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2019\\JAN.xlsx")

FEV <- read_excel("Projeto Peritoniostomia/2019/2 - FEVEREIRO.2019.xlsx")
FEV <- data.frame(FEV$...2, FEV$`FEVEREIRO/2019`, FEV$...10, FEV$...24)
names(FEV) <- c("prontuario", "nome", "cirurgia", "diagnostico")
FEV$cirurgia <- tolower(FEV$cirurgia)
FEV$diagnostico <- tolower(FEV$diagnostico)
FEV1 <- FEV[apply(FEV, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(FEV1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2019\\FEV.xlsx")

MAR <- read_excel("Projeto Peritoniostomia/2019/3 - MARÇO. 2019.xlsx")
MAR <- data.frame(MAR$...2, MAR$n, MAR$...10, MAR$...24)
names(MAR) <- c("prontuario", "nome", "cirurgia", "diagnostico")
MAR$cirurgia <- tolower(MAR$cirurgia)
MAR$diagnostico <- tolower(MAR$diagnostico)
MAR1 <- MAR[apply(MAR, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(MAR1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2019\\MAR.xlsx")

ABR <- read_excel("Projeto Peritoniostomia/2019/4 - ABRIL.2019.xlsx")
ABR <- data.frame(ABR$...2, ABR$`ABRIL/2019`, ABR$...10, ABR$...24)
names(ABR) <- c("prontuario", "nome", "cirurgia", "diagnostico")
ABR$cirurgia <- tolower(ABR$cirurgia)
ABR$diagnostico <- tolower(ABR$diagnostico)
ABR1 <- ABR[apply(ABR, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(ABR1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2019\\ABR.xlsx")

MAI <- read_excel("Projeto Peritoniostomia/2019/5 - MAIO.2019.xlsx")
MAI <- data.frame(MAI$...2, MAI$`MAIO/2019`, MAI$...10, MAI$...24)
names(MAI) <- c("prontuario", "nome", "cirurgia", "diagnostico")
MAI$cirurgia <- tolower(MAI$cirurgia)
MAI$diagnostico <- tolower(MAI$diagnostico)
MAI1 <- MAI[apply(MAI, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(MAI1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2019\\MAI.xlsx")

JUN <- read_excel("Projeto Peritoniostomia/2019/6 - JUNHO-2019.xlsx")
JUN <- data.frame(JUN$...2, JUN$`Centro Cirúrgico`, JUN$...10, JUN$...24)
names(JUN) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JUN$cirurgia <- tolower(JUN$cirurgia)
JUN$diagnostico <- tolower(JUN$diagnostico)
JUN1 <- JUN[apply(JUN, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JUN1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2019\\JUN.xlsx")

JUL <- read_excel("Projeto Peritoniostomia/2019/7 - JULHO-2019.xlsx")
JUL <- data.frame(JUL$...2, JUL$`Centro Cirúrgico`, JUL$...10, JUL$...24)
names(JUL) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JUL$cirurgia <- tolower(JUL$cirurgia)
JUL$diagnostico <- tolower(JUL$diagnostico)
JUL1 <- JUL[apply(JUL, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JUL1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2019\\JUL.xlsx")

AGO <- read_excel("Projeto Peritoniostomia/2019/8 - AGOSTO.2019.xlsx")
AGO <- data.frame(AGO$...2, AGO$`Centro Cirúrgico`, AGO$...10, AGO$...24)
names(AGO) <- c("prontuario", "nome", "cirurgia", "diagnostico")
AGO$cirurgia <- tolower(AGO$cirurgia)
AGO$diagnostico <- tolower(AGO$diagnostico)
AGO1 <- AGO[apply(AGO, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(AGO1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2019\\AGO.xlsx")

SET <- read_excel("Projeto Peritoniostomia/2019/9 - SETEMBRO.2019.xlsx")
SET <- data.frame(SET$...2, SET$`Centro Cirúrgico`, SET$...10, SET$...24)
names(SET) <- c("prontuario", "nome", "cirurgia", "diagnostico")
SET$cirurgia <- tolower(SET$cirurgia)
SET$diagnostico <- tolower(SET$diagnostico)
SET1 <- SET[apply(SET, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(SET1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2019\\SET.xlsx")

OUT <- read_excel("Projeto Peritoniostomia/2019/10 - OUTUBRO.2019.xlsx")
OUT <- data.frame(OUT$...2, OUT$`Centro Cirúrgico`, OUT$...10, OUT$...24)
names(OUT) <- c("prontuario", "nome", "cirurgia", "diagnostico")
OUT$cirurgia <- tolower(OUT$cirurgia)
OUT$diagnostico <- tolower(OUT$diagnostico)
OUT1 <- OUT[apply(OUT, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(OUT1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2019\\OUT.xlsx")

NOV <- read_excel("Projeto Peritoniostomia/2019/11 - NOVEMBRO - 2019.xlsx")
NOV <- data.frame(NOV$...2, NOV$`Centro Cirúrgico`, NOV$...10, NOV$...24)
names(NOV) <- c("prontuario", "nome", "cirurgia", "diagnostico")
NOV$cirurgia <- tolower(NOV$cirurgia)
NOV$diagnostico <- tolower(NOV$diagnostico)
NOV1 <- NOV[apply(NOV, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(NOV1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2019\\NOV.xlsx")

DEZ <- read_excel("Projeto Peritoniostomia/2019/12 - DEZEMBRO.2019.xlsx")
DEZ <- data.frame(DEZ$...2, DEZ$`Centro Cirúrgico`, DEZ$...10, DEZ$...24)
names(DEZ) <- c("prontuario", "nome", "cirurgia", "diagnostico")
DEZ$cirurgia <- tolower(DEZ$cirurgia)
DEZ$diagnostico <- tolower(DEZ$diagnostico)
DEZ1 <- DEZ[apply(DEZ, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(DEZ1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2019\\DEZ.xlsx")

# 2020 ############################################

JAN <- read_excel("Projeto Peritoniostomia/2020/001.20 - JANEIRO.xlsx")
JAN <- data.frame(JAN$...2, JAN$`JANEIRO 2020`, JAN$...13, JAN$...27)
names(JAN) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JAN$cirurgia <- tolower(JAN$cirurgia)
JAN$diagnostico <- tolower(JAN$diagnostico)
JAN1 <- JAN[apply(JAN, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JAN1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2020\\JAN.xlsx")
                            
FEV <- read_excel("Projeto Peritoniostomia/2020/002.20 - FEVEREIRO.xlsx")
FEV <- data.frame(FEV$...2, FEV$`FEVEREIRO 2020`, FEV$...13, FEV$...27)
names(FEV) <- c("prontuario", "nome", "cirurgia", "diagnostico")
FEV$cirurgia <- tolower(FEV$cirurgia)
FEV$diagnostico <- tolower(FEV$diagnostico)
FEV1 <- FEV[apply(FEV, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(FEV1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2020\\FEV.xlsx")

MAR <- read_excel("Projeto Peritoniostomia/2020/003.20 - MARÇO.xlsx")
MAR <- data.frame(MAR$...2, MAR$`MARÇO 2020`, MAR$...13, MAR$...27)
names(MAR) <- c("prontuario", "nome", "cirurgia", "diagnostico")
MAR$cirurgia <- tolower(MAR$cirurgia)
MAR$diagnostico <- tolower(MAR$diagnostico)
MAR1 <- MAR[apply(MAR, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(MAR1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2020\\MAR.xlsx")

ABR <- read_excel("Projeto Peritoniostomia/2020/004.20 - ABRIL.xlsx")
ABR <- data.frame(ABR$...2, ABR$`ABRIL 2020`, ABR$...13, ABR$...27)
names(ABR) <- c("prontuario", "nome", "cirurgia", "diagnostico")
ABR$cirurgia <- tolower(ABR$cirurgia)
ABR$diagnostico <- tolower(ABR$diagnostico)
ABR1 <- ABR[apply(ABR, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(ABR1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2020\\ABR.xlsx")

MAI <- read_excel("Projeto Peritoniostomia/2020/005.20 - MAIO.xlsx")
MAI <- data.frame(MAI$...2, MAI$`MAIO 2020`, MAI$...13, MAI$...27)
names(MAI) <- c("prontuario", "nome", "cirurgia", "diagnostico")
MAI$cirurgia <- tolower(MAI$cirurgia)
MAI$diagnostico <- tolower(MAI$diagnostico)
MAI1 <- MAI[apply(MAI, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(MAI1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2020\\MAI.xlsx")

JUN <- read_excel("Projeto Peritoniostomia/2020/006.20 - JUNHO.xlsx")
JUN <- data.frame(JUN$...2, JUN$`JUNHO 2020`, JUN$...13, JUN$...27)
names(JUN) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JUN$cirurgia <- tolower(JUN$cirurgia)
JUN$diagnostico <- tolower(JUN$diagnostico)
JUN1 <- JUN[apply(JUN, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JUN1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2020\\JUN.xlsx")

JUL <- read_excel("Projeto Peritoniostomia/2020/007.20 - JULHO.xlsx")
JUL <- data.frame(JUL$...2, JUL$`JULHO 2020`, JUL$...13, JUL$...27)
names(JUL) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JUL$cirurgia <- tolower(JUL$cirurgia)
JUL$diagnostico <- tolower(JUL$diagnostico)
JUL1 <- JUL[apply(JUL, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JUL1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2020\\JUL.xlsx")

AGO <- read_excel("Projeto Peritoniostomia/2020/008.20 - AGOSTO.xlsx")
AGO <- data.frame(AGO$...2, AGO$`AGOSTO 2020`, AGO$...13, AGO$...27)
names(AGO) <- c("prontuario", "nome", "cirurgia", "diagnostico")
AGO$cirurgia <- tolower(AGO$cirurgia)
AGO$diagnostico <- tolower(AGO$diagnostico)
AGO1 <- AGO[apply(AGO, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(AGO1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2020\\AGO.xlsx")

SET <- read_excel("Projeto Peritoniostomia/2020/009.20 - SETEMBRO.xlsx")
SET <- data.frame(SET$...2, SET$`SETEMBRO 2020`, SET$...13, SET$...27)
names(SET) <- c("prontuario", "nome", "cirurgia", "diagnostico")
SET$cirurgia <- tolower(SET$cirurgia)
SET$diagnostico <- tolower(SET$diagnostico)
SET1 <- SET[apply(SET, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(SET1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2020\\SET.xlsx")

OUT <- read_excel("Projeto Peritoniostomia/2020/010.2020 - OUTUBRO.xlsx")
OUT <- data.frame(OUT$...2, OUT$`OUTUBRO 2020`, OUT$...13, OUT$...27)
names(OUT) <- c("prontuario", "nome", "cirurgia", "diagnostico")
OUT$cirurgia <- tolower(OUT$cirurgia)
OUT$diagnostico <- tolower(OUT$diagnostico)
OUT1 <- OUT[apply(OUT, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(OUT1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2020\\OUT.xlsx")

NOV <- read_excel("Projeto Peritoniostomia/2020/011.2020 - NOVEMBRO.xlsx")
NOV <- data.frame(NOV$...2, NOV$`NOVEMBRO 2020`, NOV$...13, NOV$...27)
names(NOV) <- c("prontuario", "nome", "cirurgia", "diagnostico")
NOV$cirurgia <- tolower(NOV$cirurgia)
NOV$diagnostico <- tolower(NOV$diagnostico)
NOV1 <- NOV[apply(NOV, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(NOV1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2020\\NOV.xlsx")

DEZ <- read_excel("Projeto Peritoniostomia/2020/012.2020 - DEZEMBRO.xlsx")
DEZ <- data.frame(DEZ$...2, DEZ$`DEZEMBRO 2020`, DEZ$...13, DEZ$...27)
names(DEZ) <- c("prontuario", "nome", "cirurgia", "diagnostico")
DEZ$cirurgia <- tolower(DEZ$cirurgia)
DEZ$diagnostico <- tolower(DEZ$diagnostico)
DEZ1 <- DEZ[apply(DEZ, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(DEZ1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2020\\DEZ.xlsx")

# 2021 ############################################

JAN <- read_excel("Projeto Peritoniostomia/2021/001 - JANEIRO - 2021.xlsx")
JAN <- data.frame(JAN$...2, JAN$`JANEIRO 2021`, JAN$...13, JAN$...27)
names(JAN) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JAN$cirurgia <- tolower(JAN$cirurgia)
JAN$diagnostico <- tolower(JAN$diagnostico)
JAN1 <- JAN[apply(JAN, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JAN1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2021\\JAN.xlsx")

FEV <- read_excel("Projeto Peritoniostomia/2021/002 - FEVEREIRO - 2021.xlsx")
FEV <- data.frame(FEV$...2, FEV$`FEVEREIRO 2021`, FEV$...13, FEV$...27)
names(FEV) <- c("prontuario", "nome", "cirurgia", "diagnostico")
FEV$cirurgia <- tolower(FEV$cirurgia)
FEV$diagnostico <- tolower(FEV$diagnostico)
FEV1 <- FEV[apply(FEV, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(FEV1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2021\\FEV.xlsx")

MAR <- read_excel("Projeto Peritoniostomia/2021/003 - MARÇO - 2021.xlsx")
MAR <- data.frame(MAR$...2, MAR$...4, MAR$...13, MAR$...27)
names(MAR) <- c("prontuario", "nome", "cirurgia", "diagnostico")
MAR$cirurgia <- tolower(MAR$cirurgia)
MAR$diagnostico <- tolower(MAR$diagnostico)
MAR1 <- MAR[apply(MAR, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(MAR1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2021\\MAR.xlsx")

ABR <- read_excel("Projeto Peritoniostomia/2021/004 - ABRIL - 2021.xlsx")
ABR <- data.frame(ABR$...2, ABR$`ABRIL 2021`, ABR$...13, ABR$...27)
names(ABR) <- c("prontuario", "nome", "cirurgia", "diagnostico")
ABR$cirurgia <- tolower(ABR$cirurgia)
ABR$diagnostico <- tolower(ABR$diagnostico)
ABR1 <- ABR[apply(ABR, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(ABR1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2021\\ABR.xlsx")

MAI <- read_excel("Projeto Peritoniostomia/2021/005 - MAIO - 2021.xlsx")
MAI <- data.frame(MAI$...2, MAI$`MAIO 2021`, MAI$...13, MAI$...27)
names(MAI) <- c("prontuario", "nome", "cirurgia", "diagnostico")
MAI$cirurgia <- tolower(MAI$cirurgia)
MAI$diagnostico <- tolower(MAI$diagnostico)
MAI1 <- MAI[apply(MAI, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(MAI1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2021\\MAI.xlsx")

JUN <- read_excel("Projeto Peritoniostomia/2021/006 - JUNHO - 2021.xlsx")
JUN <- data.frame(JUN$...2, JUN$`JUNHO 2021`, JUN$...13, JUN$...27)
names(JUN) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JUN$cirurgia <- tolower(JUN$cirurgia)
JUN$diagnostico <- tolower(JUN$diagnostico)
JUN1 <- JUN[apply(JUN, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JUN1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2021\\JUN.xlsx")

JUL <- read_excel("Projeto Peritoniostomia/2021/007 - JULHO - 2021.xlsx")
JUL <- data.frame(JUL$...2, JUL$`JULHO 2021`, JUL$...13, JUL$...27)
names(JUL) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JUL$cirurgia <- tolower(JUL$cirurgia)
JUL$diagnostico <- tolower(JUL$diagnostico)
JUL1 <- JUL[apply(JUL, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JUL1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2021\\JUL.xlsx")

AGO <- read_excel("Projeto Peritoniostomia/2021/008 - AGOSTO - 2021.xlsx")
AGO <- data.frame(AGO$...2, AGO$`AGOSTO 2021`, AGO$...13, AGO$...27)
names(AGO) <- c("prontuario", "nome", "cirurgia", "diagnostico")
AGO$cirurgia <- tolower(AGO$cirurgia)
AGO$diagnostico <- tolower(AGO$diagnostico)
AGO1 <- AGO[apply(AGO, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(AGO1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2021\\AGO.xlsx")

SET <- read_excel("Projeto Peritoniostomia/2021/009 - SETEMBRO - 2021.xlsx")
SET <- data.frame(SET$...2, SET$`SETEMBRO 2021`, SET$...13, SET$...27)
names(SET) <- c("prontuario", "nome", "cirurgia", "diagnostico")
SET$cirurgia <- tolower(SET$cirurgia)
SET$diagnostico <- tolower(SET$diagnostico)
SET1 <- SET[apply(SET, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(SET1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2021\\SET.xlsx")

OUT <- read_excel("Projeto Peritoniostomia/2021/010 - OUTUBRO - 2021.xlsx")
OUT <- data.frame(OUT$...2, OUT$`OUTUBRO 2021`, OUT$...13, OUT$...27)
names(OUT) <- c("prontuario", "nome", "cirurgia", "diagnostico")
OUT$cirurgia <- tolower(OUT$cirurgia)
OUT$diagnostico <- tolower(OUT$diagnostico)
OUT1 <- OUT[apply(OUT, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(OUT1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2021\\OUT.xlsx")

NOV <- read_excel("Projeto Peritoniostomia/2021/011 - NOVEMBRO - 2021.xlsx")
NOV <- data.frame(NOV$...2, NOV$`NOVEMBRO 2021`, NOV$...13, NOV$...27)
names(NOV) <- c("prontuario", "nome", "cirurgia", "diagnostico")
NOV$cirurgia <- tolower(NOV$cirurgia)
NOV$diagnostico <- tolower(NOV$diagnostico)
NOV1 <- NOV[apply(NOV, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(NOV1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2021\\NOV.xlsx")

DEZ <- read_excel("Projeto Peritoniostomia/2021/012 - DEZEMBRO - 2021.xlsx")
DEZ <- data.frame(DEZ$...2, DEZ$`DEZEMBRO 2021`, DEZ$...13, DEZ$...27)
names(DEZ) <- c("prontuario", "nome", "cirurgia", "diagnostico")
DEZ$cirurgia <- tolower(DEZ$cirurgia)
DEZ$diagnostico <- tolower(DEZ$diagnostico)
DEZ1 <- DEZ[apply(DEZ, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(DEZ1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2021\\DEZ.xlsx")

# 2022 ############################################

JAN <- read_excel("Projeto Peritoniostomia/2022/01 - JAN.xlsx")
JAN <- data.frame(JAN$...2, JAN$`JANEIRO 2022`, JAN$...13, JAN$...27)
names(JAN) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JAN$cirurgia <- tolower(JAN$cirurgia)
JAN$diagnostico <- tolower(JAN$diagnostico)
JAN1 <- JAN[apply(JAN, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JAN1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2022\\JAN.xlsx")

FEV <- read_excel("Projeto Peritoniostomia/2022/02 - FEV.xlsx")
FEV <- data.frame(FEV$...2, FEV$`FEVEREIRO 2022`, FEV$...13, FEV$...27)
names(FEV) <- c("prontuario", "nome", "cirurgia", "diagnostico")
FEV$cirurgia <- tolower(FEV$cirurgia)
FEV$diagnostico <- tolower(FEV$diagnostico)
FEV1 <- FEV[apply(FEV, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(FEV1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2022\\FEV.xlsx")

MAR <- read_excel("Projeto Peritoniostomia/2022/03 - MAR.xlsx")
MAR <- data.frame(MAR$...2, MAR$`MARÇO 2022`, MAR$...13, MAR$...27)
names(MAR) <- c("prontuario", "nome", "cirurgia", "diagnostico")
MAR$cirurgia <- tolower(MAR$cirurgia)
MAR$diagnostico <- tolower(MAR$diagnostico)
MAR1 <- MAR[apply(MAR, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(MAR1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2022\\MAR.xlsx")

ABR <- read_excel("Projeto Peritoniostomia/2022/04 - ABR.xlsx")
ABR <- data.frame(ABR$...2, ABR$`ABRIL 2022`, ABR$...13, ABR$...27)
names(ABR) <- c("prontuario", "nome", "cirurgia", "diagnostico")
ABR$cirurgia <- tolower(ABR$cirurgia)
ABR$diagnostico <- tolower(ABR$diagnostico)
ABR1 <- ABR[apply(ABR, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(ABR1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2022\\ABR.xlsx")

MAI <- read_excel("Projeto Peritoniostomia/2022/05 - MAI.xlsx")
MAI <- data.frame(MAI$...2, MAI$`MAIO 2022`, MAI$...13, MAI$...27)
names(MAI) <- c("prontuario", "nome", "cirurgia", "diagnostico")
MAI$cirurgia <- tolower(MAI$cirurgia)
MAI$diagnostico <- tolower(MAI$diagnostico)
MAI1 <- MAI[apply(MAI, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(MAI1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2022\\MAI.xlsx")

JUN <- read_excel("Projeto Peritoniostomia/2022/06 - JUN.xlsx")
JUN <- data.frame(JUN$...2, JUN$`JUNHO 2022`, JUN$...13, JUN$...27)
names(JUN) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JUN$cirurgia <- tolower(JUN$cirurgia)
JUN$diagnostico <- tolower(JUN$diagnostico)
JUN1 <- JUN[apply(JUN, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JUN1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2022\\JUN.xlsx")

JUL <- read_excel("Projeto Peritoniostomia/2022/07 - JUL.xlsx")
JUL <- data.frame(JUL$...2, JUL$`JULHO 2022`, JUL$...13, JUL$...27)
names(JUL) <- c("prontuario", "nome", "cirurgia", "diagnostico")
JUL$cirurgia <- tolower(JUL$cirurgia)
JUL$diagnostico <- tolower(JUL$diagnostico)
JUL1 <- JUL[apply(JUL, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(JUL1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2022\\JUL.xlsx")

AGO <- read_excel("Projeto Peritoniostomia/2022/08 - AGO.xlsx")
AGO <- data.frame(AGO$...2, AGO$`AGOSTO 2022`, AGO$...13, AGO$...27)
names(AGO) <- c("prontuario", "nome", "cirurgia", "diagnostico")
AGO$cirurgia <- tolower(AGO$cirurgia)
AGO$diagnostico <- tolower(AGO$diagnostico)
AGO1 <- AGO[apply(AGO, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(AGO1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2022\\AGO.xlsx")

SET <- read_excel("Projeto Peritoniostomia/2022/09 - SET.xlsx")
SET <- data.frame(SET$...2, SET$`SETEMBRO 2022`, SET$...13, SET$...27)
names(SET) <- c("prontuario", "nome", "cirurgia", "diagnostico")
SET$cirurgia <- tolower(SET$cirurgia)
SET$diagnostico <- tolower(SET$diagnostico)
SET1 <- SET[apply(SET, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(SET1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2022\\SET.xlsx")

OUT <- read_excel("Projeto Peritoniostomia/2022/10 - OUT.xlsx")
OUT <- data.frame(OUT$...2, OUT$`OUTUBRO 2022`, OUT$...13, OUT$...27)
names(OUT) <- c("prontuario", "nome", "cirurgia", "diagnostico")
OUT$cirurgia <- tolower(OUT$cirurgia)
OUT$diagnostico <- tolower(OUT$diagnostico)
OUT1 <- OUT[apply(OUT, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(OUT1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2022\\OUT.xlsx")

NOV <- read_excel("Projeto Peritoniostomia/2022/11 - NOV.xlsx")
NOV <- data.frame(NOV$...2, NOV$`NOVEMBRO 2022`, NOV$...13, NOV$...27)
names(NOV) <- c("prontuario", "nome", "cirurgia", "diagnostico")
NOV$cirurgia <- tolower(NOV$cirurgia)
NOV$diagnostico <- tolower(NOV$diagnostico)
NOV1 <- NOV[apply(NOV, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(NOV1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2022\\NOV.xlsx")

DEZ <- read_excel("Projeto Peritoniostomia/2022/12 - DEZ.xlsx")
DEZ <- data.frame(DEZ$...2, DEZ$`DEZEMBRO 2022`, DEZ$...13, DEZ$...27)
names(DEZ) <- c("prontuario", "nome", "cirurgia", "diagnostico")
DEZ$cirurgia <- tolower(DEZ$cirurgia)
DEZ$diagnostico <- tolower(DEZ$diagnostico)
DEZ1 <- DEZ[apply(DEZ, 1, function(x) any(grepl("laparoto", x))), ]
write_xlsx(DEZ1, "C:\\Users\\duduk\\Documents\\Projeto Peritoniostomia\\2022\\DEZ.xlsx")
