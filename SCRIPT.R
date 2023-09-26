#https://rpubs.com/PhongLe/857325
#https://rviews.rstudio.com/2017/09/25/survival-analysis-with-r/
#https://rpubs.com/PhongLe/857325

library(survminer)

setwd("C:\\Users\\pcs\\Downloads\\Imad")

banco <- read.csv("Dados Imad.csv", sep = ",")
table(banco$Status)
banco <- banco[banco$T_D_.desfecho<=60,]
library(psych)

w <- describe(banco)
write.csv(w,"describe.csv")

library(survival)
library(ranger)
library(ggplot2)
library(dplyr)
library(ggfortify)
library(BMA)
library(rms)
library(ggpubr)


if(!require(devtools)) install.packages("devtools")
devtools::install_github("kassambara/survminer", build_vignettes = FALSE)
library(survminer)
library(tidyr)

head(banco)
str(banco)
Surv(banco$T_D_.desfecho, banco$Status)

km_fit <- survfit(Surv(T_D_.desfecho, Status) ~ 1, data=banco)
summary(km_fit)
plot(km_fit)
ggsurvplot(km_fit, data=banco,
           palette =
             c("black"),# custom color palettes
           conf.int = T,          # Add confidence interval
           risk.table = F,        # Add risk table
           xlab="Dias", ylab="Sobrevida",
           title="Sobrevida Geral",surv.median.line="hv",
           ggtheme = 
             theme(plot.title=element_text(hjust=0.5, size = 20),
                   axis.title.x = element_text(size=15),
                   axis.title.y = element_text(size=15),
                   legend.text = element_text(size=15),
                   panel.grid = element_blank(),
                   axis.text.y = element_text(size=15),
                   axis.text.x = element_text(size=15),
                   panel.background = element_blank()))
ggsave("fig1.png", width = 12, height = 12)


km_trt_fit <- survfit(Surv(T_D_.desfecho, Status) ~ Tec_cat, data=banco)
summary(km_trt_fit)
ggsurvplot(km_trt_fit, data=banco,
           palette =
             c("black","red"),# custom color palettes
           conf.int = T,          # Add confidence interval
           pval = TRUE,              # Add p-value
           risk.table = F,        # Add risk table
           risk.table.col = "Método",
           xlab="Dias", ylab="Sobrevida",
           title="Sobrevida Comparativa entre Técnicas",
           legend.labs =
             c("Vácuo","Síntese Primária"),
           legend = "right", legend.title="", ggtheme = 
             theme(plot.title=element_text(hjust=0.5, size = 20),
                   axis.title.x = element_text(size=15),
                   axis.title.y = element_text(size=15),
                   legend.text = element_text(size=15),
                   panel.grid = element_blank(),
                   axis.text.y = element_text(size=15),
                   axis.text.x = element_text(size=15),
                   panel.background = element_blank()))
ggsave("fig3.png", width = 12, height = 12)

survdiff(Surv(T_D_.desfecho, Status) ~ Tec_cat, data=banco)  #log-rank

m1= coxph(Surv(T_D_.desfecho, Status)~ Tec_cat, data=banco)
summary(m1)

banco$IDOSO <- ifelse(banco$Idade<=60,0,1)
table(banco$Tec_cat,banco$IDOSO)
chisq.test(table(banco$Tec_cat,banco$IDOSO))

#vet <- mutate(banco, Idade = ifelse((Idade < 60), "LT60", "OV60"),
              #AG = factor(AG),
              #Tec_cat = factor(Tec_cat,labels=c("Curativo a vacuo","sintese primaria")),
             # Status = factor(Status,labels=c("N0","Yes")))

library(GGally)  
ggpairs(banco[, c("Tec_cat" , "Idade" , "Sexo" , "Duration" , "ASA" , "Onset" ,"Tempo_peritoneostomia" , 
                  "N_interventions" , "N_complications" , "N_D_UTI", "Intervalo.72h",'Status')])
library(corrplot)
corrplot(cor(banco[, c("Tec_cat" , "Idade" , "Sexo" , "Duration" , "ASA" , "Onset" ,"Tempo_peritoneostomia" , 
              "N_interventions" , "N_complications" , "N_D_UTI", "Intervalo.72h",'Status')]), method="number")
B2 <- (banco[, c("Tec_cat" , "Idade" , "Sexo" , "Duration" , "ASA" , "Onset" ,"Tempo_peritoneostomia" , 
                   "N_interventions" , "N_complications" , "N_D_UTI", "Intervalo.72h",'Status')])
colnames(B2) <- c("Téc", "Idade","Sexo", "Duração","ASA","Início","Tempo Perit.","N. Abord.", "N. Compl.", "Tempo UTI", "Reabord. 72h","Óbito")
M <- cor(B2)
col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
corrplot(M, method="color", col=col(200),  
         type="upper", order="hclust", 
         addCoef.col = "black", # Add coefficient of correlation
         tl.col="black", tl.srt=45, #Text label color and rotation
         diag=FALSE)

km_AG_fit <- survfit(Surv(T_D_.desfecho, Status) ~ banco$Tecnica, data=banco)
library(ggsurvplot)
ggsurvplot(km_AG_fit, data=banco,
           palette =
             c("black", "grey","darkred","red"),# custom color palettes
           conf.int = T,          # Add confidence interval
           pval = TRUE,              # Add p-value
           risk.table = F,        # Add risk table
           risk.table.col = "Técnica",
           xlab="Dias", ylab="Sobrevida",
           title="Sobrevida Comparativa entre Técnicas",
           legend.labs =
            c("Vácuo", "Vácuo Falha","Síntese Primária","Síntese Primária Falha"),
           legend = "right", legend.title="",pval.coord = c(10, 0.25),
           ggtheme = 
             theme(plot.title=element_text(hjust=0.5, size = 20),
                   axis.title.x = element_text(size=15),
                   axis.title.y = element_text(size=15),
                   legend.text = element_text(size=15),
                   panel.grid = element_blank(),
                   axis.text.y = element_text(size=15),
                   axis.text.x = element_text(size=15),
                   panel.background = element_blank()))
ggsave("fig5.png", width = 12, height = 12)
dev.off()
# fit_syv1 <- svyglm(Status~ Tecnica, design=data.w1,family=quasibinomial())
# exp(cbind(OR = coef(km_AG_fit), confint(km_AG_fit)))

summary(km_AG_fit)

cox <- coxph(Surv(T_D_.desfecho, Status) ~ Tec_cat + Idade + Sexo+ Duration + ASA + Onset +Tempo_peritoneostomia + 
               N_interventions + N_complications + N_D_UTI + Intervalo.72h, data = banco)
summary(cox)

time= banco$T_D_.desfecho
status= banco$Status
xvars= banco[, c("Tec_cat" , "Idade" , "Sexo" , "Duration" , "ASA" , "Onset" ,"Tempo_peritoneostomia" , 
               "N_interventions" , "N_complications" , "N_D_UTI")]

s= bic.surv(xvars, time,status)
imageplot.bma(s)

m3= coxph(Surv(T_D_.desfecho, Status)~ Tec_cat + Idade+ ASA+ Onset + N_D_UTI, data=banco)
summary(m3)

final.model= cph(Surv(T_D_.desfecho, Status)~ Tec_cat + Idade+ ASA+ Onset + N_D_UTI, data=banco)
final.model

anova(final.model)

plot(anova(final.model), col="blue",lty=1)

library(gridExtra)
library(ggplot2)
library(survival)

test.ph=cox.zph (m3)
test.ph
ggcoxzph(test.ph)
ggcoxfunctional(m3, data=banco)
ggcoxdiagnostics(m3, type="dfbeta", linear.predictions=F)

aa_fit <-aareg(Surv(T_D_.desfecho, Status) ~ Tec_cat + Idade+ ASA+ Onset + N_D_UTI, data = banco)
aa_fit
autoplot(aa_fit)

#SEPARAÇÃO DO GRÁFICOS 4 CLASSES 2 A 2
banco1 <- banco[banco$Tecnica=="Curativo a vacuo" | banco$Tecnica=="sintese primaria",]
km_AG_fit <- survfit(Surv(T_D_.desfecho, Status) ~ banco1$Tecnica, data=banco1)

library(ggsurvplot)
ggsurvplot(km_AG_fit, data=banco1,
           palette =
             c("black","darkred"),# custom color palettes
           conf.int = T,          # Add confidence interval
           pval = TRUE,              # Add p-value
           risk.table = F,        # Add risk table
           risk.table.col = "Técnica",
           xlab="Dias", ylab="Sobrevida",
           title="Sobrevida Comparativa entre Técnicas",
           legend.labs =
             c("TPN", "Síntese Primária"),
           legend = "right", legend.title="",pval.coord = c(10, 0.25),
           ggtheme = 
             theme(plot.title=element_text(hjust=0.5, size = 20),
                   axis.title.x = element_text(size=15),
                   axis.title.y = element_text(size=15),
                   legend.text = element_text(size=15),
                   panel.grid = element_blank(),
                   axis.text.y = element_text(size=15),
                   axis.text.x = element_text(size=15),
                   panel.background = element_blank()))
ggsave("fig6.png", width = 12, height = 12)
dev.off()

banco2 <- banco[banco$Tecnica=="Curativo a vacuo falha" | banco$Tecnica=="sintese primaria falha",]
km_AG_fit <- survfit(Surv(T_D_.desfecho, Status) ~ banco2$Tecnica, data=banco2)

ggsurvplot(km_AG_fit, data=banco2,
           palette =
             c("grey","red"),# custom color palettes
           conf.int = T,          # Add confidence interval
           pval = TRUE,              # Add p-value
           risk.table = F,        # Add risk table
           risk.table.col = "Técnica",
           xlab="Dias", ylab="Sobrevida",
           title="Sobrevida Comparativa entre Técnicas",
           legend.labs =
             c("TPN (falha)", "Síntese Primária (falha)"),
           legend = "right", legend.title="",pval.coord = c(10, 0.25),
           ggtheme = 
             theme(plot.title=element_text(hjust=0.5, size = 20),
                   axis.title.x = element_text(size=15),
                   axis.title.y = element_text(size=15),
                   legend.text = element_text(size=15),
                   panel.grid = element_blank(),
                   axis.text.y = element_text(size=15),
                   axis.text.x = element_text(size=15),
                   panel.background = element_blank()))
ggsave("fig7.png", width = 12, height = 12)
dev.off()



