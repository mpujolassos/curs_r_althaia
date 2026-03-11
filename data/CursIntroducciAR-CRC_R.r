#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
setwd("C:/Users/10033834/Universitat de Vic/Recerca MPT-Equip - General/10. Transferencia/Curs Althaia/curs_r_althaia/data")
data=read.csv('CursIntroducciAR-CRC_DATA.csv')

#Setting Labels
label(data$record_id)="Record ID"
label(data$nccr)="NCCR"
label(data$pdpccr)="Diagnosticat a través del PDPCCR?"
label(data$ultima_invitacion)="Última invitació"
label(data$sexe)="Sexe:"
label(data$metode_dx)="Mètode DX:"
label(data$edat_diagn)="Edat diagnòstic:"
label(data$data_diagn)="Data diagnòstic:"
label(data$anatomia)="Té anatomia patològica?"
label(data$data_apa)="Data mostra anatomia patològica (data signatura informe):"
label(data$sincronic)="Sincrònic"
label(data$topografia)="Topografia:"
label(data$morfologia)="Morfologia:"
label(data$morfologia_esp)="Morfologia especificar altres:"
label(data$t_clinic)="T clínic"
label(data$n_clinic)="N clínic"
label(data$m_clinic)="M clínic"
label(data$pt)="pT"
label(data$pn)="pN"
label(data$pm)="pM"
label(data$ypt)="ypT"
label(data$ypn)="ypN"
label(data$ypm)="ypM"
label(data$estadi_clinic)="Estadi clínic:"
label(data$tractament___0)="Primer tractament: (choice=Rebuig)"
label(data$tractament___1)="Primer tractament: (choice=No tractament (no tractament o únicament tractament simptomàtic pal·liatiu))"
label(data$tractament___2)="Primer tractament: (choice=Radioteràpia)"
label(data$tractament___3)="Primer tractament: (choice=Quimioteràpia)"
label(data$tractament___4)="Primer tractament: (choice=Resecció local)"
label(data$tractament___5)="Primer tractament: (choice=Cirurgia)"
label(data$tractament___6)="Primer tractament: (choice=Immunoteràpia)"
label(data$tractament___7)="Primer tractament: (choice=Teràpia dirigida)"
label(data$tractament___9)="Primer tractament: (choice=Desconegut)"
label(data$rebuig_esp)="Rebuig especificar"
label(data$radioterapia___1)="Radioterapia (choice=No aplicable)"
label(data$radioterapia___2)="Radioterapia (choice=Neoadjuvant)"
label(data$radioterapia___3)="Radioterapia (choice=Adjuvant)"
label(data$quimioterapia___1)="Quimioteràpia (choice=No aplicable)"
label(data$quimioterapia___2)="Quimioteràpia (choice=Neoadjuvant)"
label(data$quimioterapia___3)="Quimioteràpia (choice=Adjuvant)"
label(data$resecci_local___1)="Resecció local (choice=Endoscòpica)"
label(data$resecci_local___2)="Resecció local (choice=Cirurgia (TEM, TAMIS))"
label(data$cirurgia)="Tipus cirurgia:"
label(data$especificar_altres)="Especificar altres:"
label(data$tipus_cirurgia_colon)="Tipus cirurgia (COLON):"
label(data$altres_colon)="Altres (COLON)"
label(data$tipus_cirurgia_recte)="Tipus cirurgia (RECTE):"
label(data$altres_recte)="Altres (RECTE)"
label(data$immunoterapia___1)="Immunoteràpia (choice=No aplicable)"
label(data$immunoterapia___2)="Immunoteràpia (choice=Neoadjuvant)"
label(data$immunoterapia___3)="Immunoteràpia (choice=Adjuvant)"
label(data$terapia_dirigida___1)="Teràpia dirigida (choice=No aplicable)"
label(data$terapia_dirigida___2)="Teràpia dirigida (choice=Neoadjuvant)"
label(data$terapia_dirigida___3)="Teràpia dirigida (choice=Adjuvant)"
label(data$ostomia)="Ostomia"
label(data$ostomia_tipu)="Tipus ostomia:"
label(data$estat_contc)="Estat últim contacte:"
label(data$data_exitus)="Data exitus:"
label(data$causa_exitus)="Causa del èxitus:"
label(data$comentaris)="Comentaris:"
label(data$data_contc)="Data últim contacte:"
label(data$cncer_clon_i_recte_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$pdpccr.factor = factor(data$pdpccr,levels=c("1","2","3","4"))
data$ultima_invitacion.factor = factor(data$ultima_invitacion,levels=c("1","2"))
data$sexe.factor = factor(data$sexe,levels=c("1","2","3"))
data$metode_dx.factor = factor(data$metode_dx,levels=c("1","2","3","4","5","6","7"))
data$anatomia.factor = factor(data$anatomia,levels=c("1","2"))
data$sincronic.factor = factor(data$sincronic,levels=c("1","2"))
data$topografia.factor = factor(data$topografia,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"))
data$morfologia.factor = factor(data$morfologia,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$t_clinic.factor = factor(data$t_clinic,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41"))
data$n_clinic.factor = factor(data$n_clinic,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"))
data$m_clinic.factor = factor(data$m_clinic,levels=c("1","2","3","4","5","6","7","8"))
data$pt.factor = factor(data$pt,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41"))
data$pn.factor = factor(data$pn,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"))
data$pm.factor = factor(data$pm,levels=c("1","2","3","4","5","6","7","8"))
data$ypt.factor = factor(data$ypt,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41"))
data$ypn.factor = factor(data$ypn,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"))
data$ypm.factor = factor(data$ypm,levels=c("1","2","3","4","5","6","7","8"))
data$estadi_clinic.factor = factor(data$estadi_clinic,levels=c("1","2","3","4","5","6","7","8","9","10","11","99"))
data$tractament___0.factor = factor(data$tractament___0,levels=c("0","1"))
data$tractament___1.factor = factor(data$tractament___1,levels=c("0","1"))
data$tractament___2.factor = factor(data$tractament___2,levels=c("0","1"))
data$tractament___3.factor = factor(data$tractament___3,levels=c("0","1"))
data$tractament___4.factor = factor(data$tractament___4,levels=c("0","1"))
data$tractament___5.factor = factor(data$tractament___5,levels=c("0","1"))
data$tractament___6.factor = factor(data$tractament___6,levels=c("0","1"))
data$tractament___7.factor = factor(data$tractament___7,levels=c("0","1"))
data$tractament___9.factor = factor(data$tractament___9,levels=c("0","1"))
data$radioterapia___1.factor = factor(data$radioterapia___1,levels=c("0","1"))
data$radioterapia___2.factor = factor(data$radioterapia___2,levels=c("0","1"))
data$radioterapia___3.factor = factor(data$radioterapia___3,levels=c("0","1"))
data$quimioterapia___1.factor = factor(data$quimioterapia___1,levels=c("0","1"))
data$quimioterapia___2.factor = factor(data$quimioterapia___2,levels=c("0","1"))
data$quimioterapia___3.factor = factor(data$quimioterapia___3,levels=c("0","1"))
data$resecci_local___1.factor = factor(data$resecci_local___1,levels=c("0","1"))
data$resecci_local___2.factor = factor(data$resecci_local___2,levels=c("0","1"))
data$cirurgia.factor = factor(data$cirurgia,levels=c("1","2","3"))
data$tipus_cirurgia_colon.factor = factor(data$tipus_cirurgia_colon,levels=c("1","2","3","4","5","6","7","8","9"))
data$tipus_cirurgia_recte.factor = factor(data$tipus_cirurgia_recte,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$immunoterapia___1.factor = factor(data$immunoterapia___1,levels=c("0","1"))
data$immunoterapia___2.factor = factor(data$immunoterapia___2,levels=c("0","1"))
data$immunoterapia___3.factor = factor(data$immunoterapia___3,levels=c("0","1"))
data$terapia_dirigida___1.factor = factor(data$terapia_dirigida___1,levels=c("0","1"))
data$terapia_dirigida___2.factor = factor(data$terapia_dirigida___2,levels=c("0","1"))
data$terapia_dirigida___3.factor = factor(data$terapia_dirigida___3,levels=c("0","1"))
data$ostomia.factor = factor(data$ostomia,levels=c("1","2"))
data$ostomia_tipu.factor = factor(data$ostomia_tipu,levels=c("1","2"))
data$estat_contc.factor = factor(data$estat_contc,levels=c("1","2"))
data$causa_exitus.factor = factor(data$causa_exitus,levels=c("1","2","3"))
data$cncer_clon_i_recte_complete.factor = factor(data$cncer_clon_i_recte_complete,levels=c("0","1","2"))

levels(data$pdpccr.factor)=c("Sí, PDSOH+","Sí, vigilancia estándar/vigilancia intensiva/poliposis","No, diagnosticats via assistencial","No, càncer de interval")
levels(data$ultima_invitacion.factor)=c("Primera ronda (2016-2017)","Segona ronda (2018-2019)")
levels(data$sexe.factor)=c("Home","Dona","No binari")
levels(data$metode_dx.factor)=c("Diagnòstic clínic (sense proves complementàries)","Diagnòstic clínic (inclou Rx, ecografies, escànners, ressonàncies...)","Tests immunològics i/o bioquímics específics","Citologia","Biòpsia de metàstasis","Biòpsia de tumor principal","Desconegut")
levels(data$anatomia.factor)=c("Sí","No")
levels(data$sincronic.factor)=c("Sí","No")
levels(data$topografia.factor)=c("153.4/C18.0 CEC","153.5/C18.1APÈNDIX","153.6/C18.2 CÒLON ASCENDENT","153.0/C18.3 ANGLE HEPÀTIC DE COLON","153.1/C18.4 CÒLON TRANSVERS","153.7/C18.5 ANGLE ESPLÉNIC DEL CÒLON","153.2/C18.6 CÒLON DESCENDENT","153.3/C18.7 CÒLON SIGMA","153.8/C18.8 LESIÓ SOBREPOSADA DEL CÒLON","153.9/C18.9 COLON, SAI","154.0/C19.9 UNIÓ RECTOSIGMOIDEA","154.1/C20.9 RECTE, SAI","154.3/C21.0 ANUS, SAI","154.2/C21.1 CANAL DE LANUS","154.8/C21.2 ZONA DE LA CLOACA","154.8/C21.8 LESIÓ SOBREPOSADA DEL RECTE, ANUS I CANAL DE LANUS")
levels(data$morfologia.factor)=c("Adenocarcinoma NCAL","Adenocarcionama amb diferenciació neuroendocrina","Adenocarcinoma en adenoma tubulovellós","Adenocarcinoma mucinós","Adenocarcinoma tipus intestinal","Adenocarcinoma de cèl·lules en anell de segell","Carcinoma de cèl·lules escatoses","Carcinoma neuroendocrí","Tumor neuroendocrí","Altres:")
levels(data$t_clinic.factor)=c("0","1","1a","1a1","1a2","1b","1b1","1b2","1c","1c1","1c2","1c3","1d","1mi","2","2a","2a1","2a2","2ab","2b","2c","2d","3","3a","3a,b","3b","3c","3c,d","3d","3e","4","4a","4b","4c","4d","a","is","is (LAMN)","ispd","ispu","X")
levels(data$n_clinic.factor)=c("+","0","1","1a","1a (sn)","1b","1c","1mi","2","2a","2b","2c","3","3a","3b","3c","4","4a","4b","X")
levels(data$m_clinic.factor)=c("0","1","1a","1b","1c","1d","1e","X")
levels(data$pt.factor)=c("0","1","1a","1a1","1a2","1b","1b1","1b2","1c","1c1","1c2","1c3","1d","1mi","2","2a","2a1","2a2","2ab","2b","2c","2d","3","3a","3a,b","3b","3c","3c,d","3d","3e","4","4a","4b","4c","4d","a","is","is (LAMN)","ispd","ispu","X")
levels(data$pn.factor)=c("+","0","1","1a","1a (sn)","1b","1c","1mi","2","2a","2b","2c","3","3a","3b","3c","4","4a","4b","X")
levels(data$pm.factor)=c("0","1","1a","1b","1c","1d","1e","X")
levels(data$ypt.factor)=c("0","1","1a","1a1","1a2","1b","1b1","1b2","1c","1c1","1c2","1c3","1d","1mi","2","2a","2a1","2a2","2ab","2b","2c","2d","3","3a","3a,b","3b","3c","3c,d","3d","3e","4","4a","4b","4c","4d","a","is","is (LAMN)","ispd","ispu","X")
levels(data$ypn.factor)=c("+","0","1","1a","1a (sn)","1b","1c","1mi","2","2a","2b","2c","3","3a","3b","3c","4","4a","4b","X")
levels(data$ypm.factor)=c("0","1","1a","1b","1c","1d","1e","X")
levels(data$estadi_clinic.factor)=c("0","I","II","IIA","IIB","IIC","III","IIIA","IIIB","IIIC","IV","Desconegut")
levels(data$tractament___0.factor)=c("Unchecked","Checked")
levels(data$tractament___1.factor)=c("Unchecked","Checked")
levels(data$tractament___2.factor)=c("Unchecked","Checked")
levels(data$tractament___3.factor)=c("Unchecked","Checked")
levels(data$tractament___4.factor)=c("Unchecked","Checked")
levels(data$tractament___5.factor)=c("Unchecked","Checked")
levels(data$tractament___6.factor)=c("Unchecked","Checked")
levels(data$tractament___7.factor)=c("Unchecked","Checked")
levels(data$tractament___9.factor)=c("Unchecked","Checked")
levels(data$radioterapia___1.factor)=c("Unchecked","Checked")
levels(data$radioterapia___2.factor)=c("Unchecked","Checked")
levels(data$radioterapia___3.factor)=c("Unchecked","Checked")
levels(data$quimioterapia___1.factor)=c("Unchecked","Checked")
levels(data$quimioterapia___2.factor)=c("Unchecked","Checked")
levels(data$quimioterapia___3.factor)=c("Unchecked","Checked")
levels(data$resecci_local___1.factor)=c("Unchecked","Checked")
levels(data$resecci_local___2.factor)=c("Unchecked","Checked")
levels(data$cirurgia.factor)=c("Colon","Recte","Altres")
levels(data$tipus_cirurgia_colon.factor)=c("Hemicolectomia dreta","Hemicolectomia dreta ampliada","Hemicolectomia esquerra","Sigmoidectomia","Protocolectomia total","Colectomia subtotal","Proctocolectomia total","Intervenció de Hartmann","Altres")
levels(data$tipus_cirurgia_recte.factor)=c("Resecció local transanal","Resecció radical anterior alta recte-sigma","Resecció radical anterior baixa recte","Resecció interesfinteriana ultrabaixa (colo-anal)","Amputació abdominoperineal miles","Intervenció de Hartmann","Proctocolectomia total","Colectomia subtotal","Exanteració pèlvica","Altres")
levels(data$immunoterapia___1.factor)=c("Unchecked","Checked")
levels(data$immunoterapia___2.factor)=c("Unchecked","Checked")
levels(data$immunoterapia___3.factor)=c("Unchecked","Checked")
levels(data$terapia_dirigida___1.factor)=c("Unchecked","Checked")
levels(data$terapia_dirigida___2.factor)=c("Unchecked","Checked")
levels(data$terapia_dirigida___3.factor)=c("Unchecked","Checked")
levels(data$ostomia.factor)=c("Sí","No")
levels(data$ostomia_tipu.factor)=c("Permanent","Transitòria")
levels(data$estat_contc.factor)=c("Viu","Mort")
levels(data$causa_exitus.factor)=c("Èxitus degut al càncer","Èxitus per altres motius","Desconegut")
levels(data$cncer_clon_i_recte_complete.factor)=c("Incomplete","Unverified","Complete")


