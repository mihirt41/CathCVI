

Years of Study
1994-2014   

Look back -5 years

Age -over 18 at the time

Include:

Code(s)	 	Description

78650  	 	Chest pain NOS
78651  	 	Precordial pain
78659  	 	Chest pain NEC



______________________________________________________________________________________________________________________________________________________


###########################################This section contains the outcome


3722, 3723 left and right heart cad.


88.5 Angiocardiography using contrast material

Includes: arterial puncture and insertion of arterial catheter for injection of contrast material

cineangiocardiography

selective angiocardiography

Code also synchronous cardiac catheterization (37.21-37.23)

Excludes:

angiography of pulmonary vessels (88.43, 88.62) 



88.50 Angiocardiography, not otherwise specified 


cad<-as.character(c(3722,3723))

t1<-as.numeric(midas15$PROC1%in%cad)
t2<-as.numeric(midas15$PROC2%in%cad)
t3<-as.numeric(midas15$PROC3%in%cad)
t4<-as.numeric(midas15$PROC4%in%cad)
t5<-as.numeric(midas15$PROC5%in%cad)
t6<-as.numeric(midas15$PROC6%in%cad)
t7<-as.numeric(midas15$PROC7%in%cad)
t8<-as.numeric(midas15$PROC8%in%cad)
t<-t1+t2+t3+t4+t5+t6+t7+t8
y<-c(1:nrow(midas15))
t<-t*y
midasp<-midas15[t,]



midasp$DSCHDAT<-as.Date(midasp$DSCHDAT, format ="%m/%d/%Y")
midasp$ADMDAT<-as.Date(midasp$ADMDAT, format ="%m/%d/%Y")
midasp$patbdte<-as.Date(midasp$patbdte, format ="%m/%d/%Y")


a<-is.na(midasp$patbdte)
y<-c(1:nrow(midasp))
a<-a*y
check<-midasp[a,]
midasp<-midasp[-a,]
AGE<-difftime(as.Date(midasp$ADMDAT),as.Date(midasp$patbdte), units = "weeks")
AGE<-AGE/52
AGE<-as.numeric(AGE)
midasp<-cbind(midasp,AGE)

midasp<-subset(midasp, AGE>18)












88.51 Angiocardiography of venae cavae

Inferior vena cavography

Phlebography of vena cava (inferior) (superior) 



88.52 Angiocardiography of right heart structures

Angiocardiography of:

pulmonary valve

right atrium

right ventricle (outflow tract)

Excludes:

intra-operative fluorescence vascular angiography (88.59)

that combined with left heart angiocardiography (88.54) 


88.53 Angiocardiography of left heart structures

Angiocardiography of:

aortic valve

left atrium

left ventricle (outflow tract)

Excludes:

intra-operative fluorescence vascular angiography (88.59)

that combined with right heart angiocardiography (88.54) 



88.54 Combined right and left heart angiocardiography

Excludes:

intra-operative fluorescence vascular angiography (88.59) 



88.55 Coronary arteriography using a single catheter

Coronary arteriography by Sones technique

Direct selective coronary arteriography 

using a single catheter

Excludes:

intra-operative fluorescence vascular angiography (88.59) 



88.56 Coronary arteriography using two catheters

Coronary arteriography by:

Judkins technique

Ricketts and Abrams technique

Direct selective coronary arteriography using two catheters

Excludes:

intra-operative fluorescence vascular angiography (88.59) 



88.57 Other and unspecified coronary arteriography

Coronary arteriography NOS

Excludes:

intra-operative fluorescence vascular angiography (88.59) 



88.58 Negative-contrast cardiac roentgenography

Cardiac roentgenography with injection of carbon dioxide 



88.59 Intra-operative fluorescence vascular angiography

Intraoperative laser arteriogram (SPY)

SPY arteriogram

SPY arteriography 



---------------------------------------------------------------------------------------------------------------------------------





Exclude: anytime:




less than 18 years old
78652  	 	Painful respiration


411 Other acute and subacute forms of ischemic heart disease
Code(s)	 	Description
411.0  	 	Post MI syndrome
411.1  	 	Intermed coronary synd
411.81	-	411.89  	 	411.8 Other acute and subacute forms of ischemic heart disease; other


413 Angina pectoris
Code(s)	 	Description
413.0  	 	Angina decubitus
413.1  	 	Prinzmetal angina
413.9  	 	Angina pectoris NEC/NOS



Valular diseases:
394 Diseases of mitral valveShow Guidelines
Code(s)	 	Description
394.0  	 	Mitral stenosis
394.1  	 	Rheumatic mitral insuff
394.2  	 	Mitral stenosis w insuff
394.9  	 	Mitral valve dis NEC/NOS

Code(s)	 	Description
395.0  	 	Rheumat aortic stenosis
395.1  	 	Rheumatic aortic insuff
395.2  	 	Rheum aortic sten/insuff
395.9  	 	Rheum aortic dis NEC/NOS



Code(s)	 	Description
396.0  	 	Mitral/aortic stenosis
396.1  	 	Mitral stenos/aort insuf
396.2  	 	Mitral insuf/aort stenos
396.3  	 	Mitral/aortic val insuff
396.8  	 	Mitr/aortic mult involv
396.9  	 	Mitral/aortic v dis NOS



Code(s)	 	Description
397.0  	 	Tricuspid valve disease
397.1  	 	Rheum pulmon valve dis
397.9  	 	Rheum endocarditis NOS




Code(s)	 	Description
425.0  	 	Endomyocardial fibrosis
425.11	-	425.18  	 	

425.1 Hypertrophic cardiomyopathy
425.2  	 	Obsc afric cardiomyopath
425.3  	 	Endocard fibroelastosis
425.4  	 	Prim cardiomyopathy NEC
425.5  	 	Alcoholic cardiomyopathy
425.7  	 	Metabolic cardiomyopathy
425.8  	 	Cardiomyopath in oth dis
425.9  	 	Second cardiomyopath NOS



_________________________________________________________________________________________________________________________________________________
_________________________________________________________________________________________________________________________________________________
_________________________________________________________________________________________________________________________________________________
start here:






system.time(load("C:/MIDAS/midas14.RData"))
gc()
midas14$DSCHDAT<-as.Date(midas14$DSCHDAT, format ="%m/%d/%Y")
midas14$ADMDAT<-as.Date(midas14$ADMDAT, format ="%m/%d/%Y")
midas14$PATBDTE<-as.Date(midas14$PATBDTE, format ="%m/%d/%Y")
a<-as.numeric(is.na(midas14$PATBDTE))
y<-c(1:nrow(midas14))
a<-a*y
midasp<-midas14[-a,]
AGE<-difftime(as.Date(midasp$ADMDAT),as.Date(midasp$PATBDTE), units = "weeks")
AGE<-AGE/52
AGE<-as.numeric(AGE)
midasp<-cbind(midasp,AGE)
midasp<-subset(midasp, AGE>18)
midasp<-subset(midasp, ADMDAT> "1993-12-31")


chestb<-as.character( c(78650,78651))
t<-as.numeric(midasp$DX1%in%chestb)
t<-as.numeric(t>0)
y<-c(1:nrow(midasp))
t<-t*y
checka2<-midasp[t,]
numbers2<-c(length(unique(checka2$PATIENT_ID)))




excluding1<-as.character( c(424, 4240:4249, 42400:42499) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
y<-c(1:nrow(checka2))
a<-a*y
checka2<-checka2[-a,]
numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))


excluding1<-as.character( c(391, 3910:3919, 39100:39199) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }



excluding1<-as.character( c(392, 3920:3929, 39200:39299) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }



excluding1<-as.character( c(394, 3940:3949, 39400:39499) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }


excluding1<-as.character( c(395, 3950:3959, 39500:39599) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }




excluding1<-as.character( c(396, 3960:3969, 39600:39699) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }




excluding1<-as.character( c(397, 3970:3979, 39700:39799) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }


excluding1<-as.character( c(398, 3980:3989, 39800:39899) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }





excluding1<-as.character( c(422, 4220:4229, 42200:42299) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }




excluding1<-as.character( c(425, 4250:4259, 42500:42599) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }



excluding1<-as.character( c(428, 4280:4289, 42800:42899) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }





excluding1<-as.character( c(78652 ) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }

excluding1<-as.character( c(410, 4100:4109,41000:41099 ) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }

excluding1<-as.character( c(411, 4110:4119,41100:41199 ) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }

excluding1<-as.character( c(412, 4120:4129,41200:41299 ) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }


excluding1<-as.character( c(413, 4130:4139,41300:41399 ) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }



excluding1<-as.character( c(414, 4140:4149,41400:41499 ) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }



excluding1<-as.character( c(420,4200:4209, 42000:42099 ) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }


excluding1<-as.character( c(423,4230:4239, 42300:42399 ) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }


excluding1<-as.character( c(421,4210:4219, 42100:42199 ) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }




excluding1<-as.character( c(44100,44101, 44103,4411, 4419) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }






excluding1<-as.character( c(41519 ) )
t1<-as.numeric(checka2$DX1%in%excluding1)
t2<-as.numeric(checka2$DX2%in%excluding1)
t3<-as.numeric(checka2$DX3%in%excluding1)
t4<-as.numeric(checka2$DX4%in%excluding1)
t5<-as.numeric(checka2$DX5%in%excluding1)
t6<-as.numeric(checka2$DX6%in%excluding1)
t7<-as.numeric(checka2$DX7%in%excluding1)
t8<-as.numeric(checka2$DX8%in%excluding1)
t9<-as.numeric(checka2$DX9%in%excluding1)
t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y
midasp1<-checka2[t,]
a<-as.numeric(checka2$PATIENT_ID%in%midasp1$PATIENT_ID)
if(sum(a)>0){
  y<-c(1:nrow(checka2))
  a<-a*y
  checka2<-checka2[-a,]
  numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID)))
}
if(sum(a)==0) {numbers2<-c(numbers2, length(unique(checka2$PATIENT_ID))) }



cad<-as.character(c(3722,3723))
t1<-as.numeric(checka2$PROC1%in%cad)
t2<-as.numeric(checka2$PROC2%in%cad)
t3<-as.numeric(checka2$PROC3%in%cad)
t4<-as.numeric(checka2$PROC4%in%cad)
t5<-as.numeric(checka2$PROC5%in%cad)
t6<-as.numeric(checka2$PROC6%in%cad)
t7<-as.numeric(checka2$PROC7%in%cad)
t8<-as.numeric(checka2$PROC8%in%cad)
t<-t1+t2+t3+t4+t5+t6+t7+t8
t<-as.numeric(t>0)
y<-c(1:nrow(checka2))
t<-t*y


cases<-checka2[t,]



a<-checka2$PATIENT_ID %in%cases$PATIENT_ID
a<-as.numeric(a)
y<-c(1:nrow(checka2))
a<-a*y
cases2<-checka2[a,]

cases2<-cases2[order(as.numeric(as.factor(as.character(cases2$PATIENT_ID))), by=cases2$ADMDAT),]
a<-as.numeric(as.factor(as.character(cases2$PATIENT_ID)))
b<-a[-1]
b<-c(b,0)
c<-a-b

cas3<-cbind(cases2, c)
cas3<-subset(cas3, c==0)
a<-as.numeric(cases2$PATIENT_ID%in%cas3$PATIENT_ID)
y<-c(1:nrow(cases2))
a<-a*y
cases3a<-cases2[-a,]
cases3b<-cases2[a,]


cad<-as.character(c(3722,3723))
t1<-as.numeric(cases3b$PROC1%in%cad)
t2<-as.numeric(cases3b$PROC2%in%cad)
t3<-as.numeric(cases3b$PROC3%in%cad)
t4<-as.numeric(cases3b$PROC4%in%cad)
t5<-as.numeric(cases3b$PROC5%in%cad)
t6<-as.numeric(cases3b$PROC6%in%cad)
t7<-as.numeric(cases3b$PROC7%in%cad)
t8<-as.numeric(cases3b$PROC8%in%cad)
t<-t1+t2+t3+t4+t5+t6+t7+t8
t<-as.numeric(t>0)
cases3b<-cbind(cases3b,t)
cases3b2<-subset(cases3b,t==1) 

cases3b2<-cases3b2[order(as.numeric(as.factor(as.character(cases3b2$PATIENT_ID))), by=cases3b2$ADMDAT),]
a<-as.numeric(as.factor(as.character(cases3b2$PATIENT_ID)))
b<-a[-1]
b<-c(b,0)
c<-a-b
c<-as.numeric(c<0)
y<-c(1:nrow(cases3b2))
c<-c*y
c<-c[c>0]
c<-c+1
c<-c(1,c)
cases3b3<-cases3b2[c,]
cases3b3<-cases3b3[,-50]
cases<-rbind(cases3a, cases3b3)




a<-checka2$PATIENT_ID%in%cases$PATIENT_ID
a<-as.numeric(a)
y<-c(1:nrow(checka2))
a<-a*y
controls<-checka2[-a,]

controls<-controls[order(as.numeric(as.factor(as.character(controls$PATIENT_ID))), by=controls$ADMDAT),]
a<-as.numeric(as.factor(as.character(controls$PATIENT_ID)))
b<-a[-1]
b<-c(b,0)
c<-a-b
c<-as.numeric(c<0)
y<-c(1:nrow(controls))
c<-c*y
c<-c[c>0]
c<-c+1
c<-c(1,c)
controls<-controls[c,]



a<-as.numeric(midasp$PATIENT_ID%in%controls$PATIENT_ID)
y<-c(1:nrow(midasp))
a<-a*y
controlshistory<-midasp[a,]


cad<-as.character(c(3722,3723))
t1<-as.numeric(controlshistory$PROC1%in%cad)
t2<-as.numeric(controlshistory$PROC2%in%cad)
t3<-as.numeric(controlshistory$PROC3%in%cad)
t4<-as.numeric(controlshistory$PROC4%in%cad)
t5<-as.numeric(controlshistory$PROC5%in%cad)
t6<-as.numeric(controlshistory$PROC6%in%cad)
t7<-as.numeric(controlshistory$PROC7%in%cad)
t8<-as.numeric(controlshistory$PROC8%in%cad)
t<-t1+t2+t3+t4+t5+t6+t7+t8
t<-as.numeric(t>0)
y<-c(1:nrow(controlshistory))
t<-t*y

controlsb<-controlshistory[t,]

a<-as.numeric(controlshistory$PATIENT_ID%in%controlsb$PATIENT_ID)
y<-c(1:nrow(controlshistory))
a<-a*y
controlsb<-controlshistory[a,]
controlsa<-controlshistory[-a,]



a<-as.numeric(controls$PATIENT_ID%in%controlsa$PATIENT_ID)
y<-c(1:nrow(controls))
a<-a*y
truecontrol<-controls[a,]
falsecontrols<-controls[-a,]


cathvariable<-rep(0,nrow(truecontrol))
numberofcath<-rep(0, nrow(truecontrol))
TIMETILLcath<-rep(99999, nrow(truecontrol))

truecontrol<-cbind(truecontrol, cathvariable, numberofcath, TIMETILLcath)




cathvariable<-rep(1,nrow(falsecontrols))
numberofcath<-rep(0, nrow(falsecontrols))
TIMETILLcath<-rep(0, nrow(falsecontrols))

falsecontrols<-cbind(falsecontrols, cathvariable, numberofcath, TIMETILLcath)
TIMETILLlastcath<-rep(0, nrow(falsecontrols))
falsecontrols<-cbind(falsecontrols, TIMETILLlastcath)

TIMETILLlastcath<-rep(99999,nrow(truecontrol))
truecontrol<-cbind(truecontrol, TIMETILLlastcath)



cad<-as.character(c(3722,3723))
t1<-as.numeric(controlsb$PROC1%in%cad)
t2<-as.numeric(controlsb$PROC2%in%cad)
t3<-as.numeric(controlsb$PROC3%in%cad)
t4<-as.numeric(controlsb$PROC4%in%cad)
t5<-as.numeric(controlsb$PROC5%in%cad)
t6<-as.numeric(controlsb$PROC6%in%cad)
t7<-as.numeric(controlsb$PROC7%in%cad)
t8<-as.numeric(controlsb$PROC8%in%cad)
t<-t1+t2+t3+t4+t5+t6+t7+t8
t<-as.numeric(t>0)
y<-c(1:nrow(controlsb))
t<-t*y
controlsb<-controlsb[t,]

for (j in 1:nrow(falsecontrols))
{a<-subset(controlsb, controlsb$PATIENT_ID%in%falsecontrols$PATIENT_ID[j])   
falsecontrols$TIMETILLlastcath[j]<--1*as.numeric(difftime(as.Date(as.character(falsecontrols$ADMDAT[j])), as.Date(as.character(a$ADMDAT[nrow(a)])), units = c("weeks")))
falsecontrols$TIMETILLcath[j]<--1*as.numeric(difftime(as.Date(as.character(falsecontrols$ADMDAT[j])), as.Date(as.character(a$ADMDAT[1])), units = c("weeks")))
falsecontrols$numberofcath[j]<-nrow(a)
}



controls<-rbind(truecontrol, falsecontrols)




falsecontrols<-falsecontrols[order(as.numeric(as.factor(falsecontrols$PATIENT_ID)), by=falsecontrols$ADMDAT),]
controlsb<-controlsb[order(as.numeric(as.factor(controlsb$PATIENT_ID)), by=controlsb$ADMDAT),]



afterchestpaincath<-c(0)
reasonabletimeframe<-c(0)
for (i in 1:nrow(falsecontrols)){
  a<-subset(controlsb, controlsb$PATIENT_ID%in%falsecontrols$PATIENT_ID[i])   
  b<-rep(as.character(as.Date(as.character(falsecontrols$ADMDAT[i]))),nrow(a))
  c<--1*as.numeric(difftime(as.Date(as.character(b)),as.Date(as.character(a$ADMDAT))    , units=c("weeks")))
  d<-as.numeric(c>0)
  e<-as.numeric(c>-4)
  f<-as.numeric(c<4)
  e<-e*f
  afterchestpaincath<-c(afterchestpaincath, d)
  reasonabletimeframe<-c(reasonabletimeframe, e)
}

reasonabletimeframe<-reasonabletimeframe[-1]
afterchestpaincath<-afterchestpaincath[-1]
controlsb<-cbind(controlsb, reasonabletimeframe, afterchestpaincath)





timeafterchestpaincath<-c(0)
reasonabletimeframe<-c(0)
for (i in 1:nrow(falsecontrols)){
  a<-subset(controlsb, controlsb$PATIENT_ID%in%falsecontrols$PATIENT_ID[i])   
  b<-subset(a, afterchestpaincath==1)
  c<-sum(nrow(b))
  if(c==0){ timeafterchestpaincath<-c(timeafterchestpaincath, 99999)
  reasonabletimeframe<-c(reasonabletimeframe, sum(a$reasonabletimeframe))}
  if(c>0){timeafterchestpaincath<-c(timeafterchestpaincath, -1*as.numeric(difftime(as.Date(as.character(falsecontrols$ADMDAT[i])),as.Date(as.character(b$ADMDAT[1]))    , units=c("weeks"))))
  reasonabletimeframe<-c(reasonabletimeframe, sum(a$reasonabletimeframe))
  }
}


reasonabletimeframe<-reasonabletimeframe[-1]
timeafterchestpaincath<-timeafterchestpaincath[-1]
falsecontrols<-cbind(falsecontrols, reasonabletimeframe, timeafterchestpaincath)


timeafterchestpaincath<-rep(99999,nrow(truecontrol))
reasonabletimeframe<-rep(0, nrow(truecontrol))
truecontrol<-cbind(truecontrol, reasonabletimeframe,timeafterchestpaincath)


cas3<-c(1)
cases2<-c(1)
cases3a<-c(1)
cases3b<-c(1)
cases3b2<-c(1)
cases3b3<-c(1)
checka2<-c(1)
controlsa<-c(1)
controls<-c(1)
midas14<-c(1)
midasp1<-c(1)
b<-c(1)


gc()


cathvariable<-rep(0,nrow(cases))
numberofcath<-rep(0, nrow(cases))
TIMETILLcath<-rep(99999, nrow(cases))
TIMETILLlastcath<-rep(99999,nrow(cases))




cases<-cbind(cases, cathvariable, numberofcath, TIMETILLcath, TIMETILLlastcath)

a<-as.numeric(midasp$PATIENT_ID%in%cases$PATIENT_ID)
y<-c(1:nrow(midasp))
a<-a*y
caseshistory<-midasp[a,]


cad<-as.character(c(3722,3723))
t1<-as.numeric(caseshistory$PROC1%in%cad)
t2<-as.numeric(caseshistory$PROC2%in%cad)
t3<-as.numeric(caseshistory$PROC3%in%cad)
t4<-as.numeric(caseshistory$PROC4%in%cad)
t5<-as.numeric(caseshistory$PROC5%in%cad)
t6<-as.numeric(caseshistory$PROC6%in%cad)
t7<-as.numeric(caseshistory$PROC7%in%cad)
t8<-as.numeric(caseshistory$PROC8%in%cad)
t<-t1+t2+t3+t4+t5+t6+t7+t8
t<-as.numeric(t>0)
y<-c(1:nrow(caseshistory))
t<-t*y

casesb<-caseshistory[t,]


cases<-cases[order(as.numeric(as.factor(cases$PATIENT_ID)), by=cases$ADMDAT),]
casesb<-casesb[order(as.numeric(as.factor(casesb$PATIENT_ID)), by=casesb$ADMDAT),]

for (j in 1:nrow(cases))
{a<-subset(casesb, casesb$PATIENT_ID%in%cases$PATIENT_ID[j])   
cases$TIMETILLlastcath[j]<--1*as.numeric(difftime(as.Date(as.character(cases$ADMDAT[j])), as.Date(as.character(a$ADMDAT[nrow(a)])), units = c("weeks")))
cases$TIMETILLcath[j]<--1*as.numeric(difftime(as.Date(as.character(cases$ADMDAT[j])), as.Date(as.character(a$ADMDAT[1])), units = c("weeks")))
cases$numberofcath[j]<-nrow(a)
}


reasonabletimeframe<-rep(1, nrow(cases))
cases<-cbind(cases,reasonabletimeframe)




afterchestpaincath<-c(0)
for (i in 1:nrow(cases)){
  a<-subset(casesb, casesb$PATIENT_ID%in%cases$PATIENT_ID[i])   
  b<-rep(as.character(as.Date(as.character(cases$ADMDAT[i]))),nrow(a))
  c<--1*as.numeric(difftime(as.Date(as.character(b)),as.Date(as.character(a$ADMDAT))    , units=c("weeks")))
  d<-as.numeric(c>0)
  afterchestpaincath<-c(afterchestpaincath, d)
}
afterchestpaincath<-afterchestpaincath[-1]
casesb<-cbind(casesb, afterchestpaincath)


timeafterchestpaincath<-c(0)
for (i in 1:nrow(cases)){
  a<-subset(casesb, casesb$PATIENT_ID%in%cases$PATIENT_ID[i])   
  b<-subset(a, afterchestpaincath==1)
  c<-sum(nrow(b))
  if(c==0){ timeafterchestpaincath<-c(timeafterchestpaincath, 99999)}
  if(c>0){timeafterchestpaincath<-c(timeafterchestpaincath, -1*as.numeric(difftime(as.Date(as.character(cases$ADMDAT[i])),as.Date(as.character(b$ADMDAT[1]))    , units=c("weeks"))))}
}

timeafterchestpaincath<-timeafterchestpaincath[-1]

cases<-cbind(cases, timeafterchestpaincath)


falsecontrolsa<-subset(falsecontrols, reasonabletimeframe==1)




___________________________________________________________________________________________________________________________________________________________________________________________________





excludinghistory<-as.character(c(424, 4240:4249, 42400:42499,391, 3910:3919, 39100:39199,395, 3950:3959, 39500:39599,
                                 396, 3960:3969, 39600:39699,397, 3970:3979, 39700:39799,398, 3980:3989, 39800:39899,422, 4220:4229, 42200:42299,
                                 425, 4250:4259, 42500:42599,428, 4280:4289, 42800:42899,78652,410, 4100:4109,41000:41099,
                                 411, 4110:4119,41100:41199,412, 4120:4129,41200:41299,413, 4130:4139,41300:41399,414, 4140:4149,41400:41499,
                                 420,4200:4209, 42000:42099,423,4230:4239, 42300:42399,421,4210:4219, 42100:42199,44100,44101, 44103,4411, 4419,41519))

truecontrolshistory<-subset(midasp, midasp$PATIENT_ID%in% truecontrol$PATIENT_ID)


getrid<-function(X){ 
  
  
  X2<-subset(midasp, midasp$PATIENT_ID%in% X$PATIENT_ID)
  
  t1<-as.numeric(X2$DX1%in%excludinghistory)
  t2<-as.numeric(X2$DX2%in%excludinghistory)
  t3<-as.numeric(X2$DX3%in%excludinghistory)
  t4<-as.numeric(X2$DX4%in%excludinghistory)
  t5<-as.numeric(X2$DX5%in%excludinghistory)
  t6<-as.numeric(X2$DX6%in%excludinghistory)
  t7<-as.numeric(X2$DX7%in%excludinghistory)
  t8<-as.numeric(X2$DX8%in%excludinghistory)
  t9<-as.numeric(X2$DX9%in%excludinghistory)
  t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
  excludeindicator<-as.numeric(t>0)
  
  Y<-cbind(X2, excludeindicator)
  Y<-subset(Y,excludeindicator==1 )
  X3<-subset(X2, !(X2$PATIENT_ID%in% Y$PATIENT_ID))
  
  firstIndex<-match(unique(X3$PATIENT_ID),X3$PATIENT_ID)
  chestIndex<-which(rownames(X3)%in%rownames(X))
  
  a<-c()
  b<-c(1:length(X3$PATBDTE))
  c<-lapply(c(1:length(firstIndex)), function(i){
   c(firstIndex[i]:chestIndex[i])
  })
  
  c<-unlist(c)
  X3<-X3[c,]
  X3
  
} 


_______________________________________________________________________________________________________________________________________________________________________________________________________________________



###Cleaning the False Controls and adding them to controls/cases

cleancontrols<-falsecontrols[which(falsecontrols$timeafterchestpaincath>4 &
                                     falsecontrols$TIMETILLcath>=0),]

cleancases<-falsecontrols[which(falsecontrols$TIMETILLcath<=-4 &
                                  falsecontrols$reasonabletimeframe>=0),]


truecontrol<-rbind(truecontrol,cleancontrols)  ##109717 controls
cases<-rbind(cases, cleancases)                ##25001 cases

rm(cleancontrols,cleancases)




###Importing Hospital Name/Type CSVs

library(readxl)
CLAB <- read_excel("C:/Users/ds752/Downloads/CathLab_List.xls", 
                   sheet = "CLAB etc")
View(CLAB)

HOSPNAME <- read_excel("C:/Users/ds752/Downloads/CathLab_List.xls", 
                       sheet = "HOSP NAME")
View(HOSPNAME)

colnames(HOSPNAME)[9]<-"Mor_Teach"
colnames(HOSPNAME)[1]<-"HOSPNUM"

CLAB<-as.data.frame(CLAB)
HOSPNAME<-as.data.frame(HOSPNAME)

###Merging Hospital Information with Control/Case subsets


##data refers to the dataset you want to merge with the hosptial information
mergeHospInfo<-function(data){
  
  for (i in c(2:ncol(CLAB))){
    c1<-CLAB[,i][match(data$HOSP,CLAB$PROVNOH)]
    data<-cbind(data,c1)
    colnames(data)[ncol(data)]<-colnames(CLAB)[i]
  }
  
  for (i in c(2:ncol(HOSPNAME))){
    c1<-HOSPNAME[,i][match(data$HOSP,HOSPNAME$HOSPNUM)]
    data<-cbind(data,c1)
    colnames(data)[ncol(data)]<-colnames(HOSPNAME)[i]
  }
  
  data
}

cases<-mergeHospInfo(cases)
truecontrol<-mergeHospInfo(truecontrol)
###############


###Eliminating patients with certian discharge codes

dischargeExclude<-c(3,20,43,64,65)


cases<-cases[which(!(cases$STATUS%in%dischargeExclude)), ]
truecontrol<-truecontrol[which(!(truecontrol$STATUS%in%dischargeExclude)),]

##need to rerun getrid function
truecontrolX<-getrid(truecontrol)
casesX<-getrid(cases)

##counts of unique patients
length(unique(casesX$PATIENT_ID))
length(unique(truecontrolX$PATIENT_ID))
con<-truecontrolX
cas<-casesX
con<-con[order(as.numeric(as.factor(con$PATIENT_ID)),by=con$ADMDAT),]
a<-as.numeric(as.factor(con$PATIENT_ID))
b<-a[-1]
b<-c(b, 100000000000000)
c<-a-b
a<-as.numeric(c<0)
y<-c(1:nrow(con))
a<-a*y
con2<-con[a,]


cas<-cas[order(as.numeric(as.factor(cas$PATIENT_ID)),by=cas$ADMDAT),]
a<-as.numeric(as.factor(cas$PATIENT_ID))
b<-a[-1]
b<-c(b, 100000000000000)
c<-a-b
a<-as.numeric(c<0)
y<-c(1:nrow(cas))
a<-a*y
cas2<-cas[a,]

##exporting each dataset as a csv - remember cas2, con2 don't have patient history
##now we can just load these data sets instead of subsetting from midas

write.csv(cas2, "cases.csv")
write.csv(con2, "controls.csv")

####Loading in data sets
library(readr)
cases <- read.csv("~/MihirTrivedi/cases.csv")
View(cases)

controls <- read.csv("~/MihirTrivedi/controls.csv")
View(controls)


##For some reason we lost the hospital information, need to remerge/rerun mergeHospInfo, and the corresponding data sets
cases<-mergeHospInfo(cases)
controls<-mergeHospInfo(controls)
total <-rbind(cases,controls)

a<-c(rep(1,nrow(cases)), rep(0,nrow(controls)))
total<-cbind(total,a)
colnames(total)[ncol(total)]<-"CASE?"


###Updating the bedsizes form the new data
total$`# beds`<-as.character(total$`# beds`)
total$`# beds`[which(total$`# beds`=="?????????")]<-total$BEDS[which(total$`# beds`=="?????????")]
total$`# beds`<-as.numeric(total$`# beds`)

_______________________________________________________________________________________________________________________________________________________________________________________________________________________
tablemaker1<-function(X){
  hypertension<-as.character(c(401:405, 4010:4059,40100:40599))
  t1<-as.numeric(X$DX1%in%hypertension)
  t2<-as.numeric(X$DX2%in%hypertension)
  t3<-as.numeric(X$DX3%in%hypertension)
  t4<-as.numeric(X$DX4%in%hypertension)
  t5<-as.numeric(X$DX5%in%hypertension)
  t6<-as.numeric(X$DX6%in%hypertension)
  t7<-as.numeric(X$DX7%in%hypertension)
  t8<-as.numeric(X$DX8%in%hypertension)
  t9<-as.numeric(X$DX9%in%hypertension)
  t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
  HYPERTENSION<-as.numeric(t>0)
  
  
  
  diabetes<-as.character(c(250,2500:2509, 25000:25090))
  t1<-as.numeric(X$DX1%in%diabetes)
  t2<-as.numeric(X$DX2%in%diabetes)
  t3<-as.numeric(X$DX3%in%diabetes)
  t4<-as.numeric(X$DX4%in%diabetes)
  t5<-as.numeric(X$DX5%in%diabetes)
  t6<-as.numeric(X$DX6%in%diabetes)
  t7<-as.numeric(X$DX7%in%diabetes)
  t8<-as.numeric(X$DX8%in%diabetes)
  t9<-as.numeric(X$DX9%in%diabetes)
  t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
  DIABETES<-as.numeric(t>0)
  
  
  
  chronicrenaldisease<-as.character(c(581:588, 5810:5889,58100:58899))
  t1<-as.numeric(X$DX1%in%chronicrenaldisease)
  t2<-as.numeric(X$DX2%in%chronicrenaldisease)
  t3<-as.numeric(X$DX3%in%chronicrenaldisease)
  t4<-as.numeric(X$DX4%in%chronicrenaldisease)
  t5<-as.numeric(X$DX5%in%chronicrenaldisease)
  t6<-as.numeric(X$DX6%in%chronicrenaldisease)
  t7<-as.numeric(X$DX7%in%chronicrenaldisease)
  t8<-as.numeric(X$DX8%in%chronicrenaldisease)
  t9<-as.numeric(X$DX9%in%chronicrenaldisease)
  t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
  RENAL<-as.numeric(t>0)
  
  
  atrialfibrillation<-as.character(c(42731))
  t1<-as.numeric(X$DX1%in%atrialfibrillation)
  t2<-as.numeric(X$DX2%in%atrialfibrillation)
  t3<-as.numeric(X$DX3%in%atrialfibrillation)
  t4<-as.numeric(X$DX4%in%atrialfibrillation)
  t5<-as.numeric(X$DX5%in%atrialfibrillation)
  t6<-as.numeric(X$DX6%in%atrialfibrillation)
  t7<-as.numeric(X$DX7%in%atrialfibrillation)
  t8<-as.numeric(X$DX8%in%atrialfibrillation)
  t9<-as.numeric(X$DX9%in%atrialfibrillation)
  t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
  AFIB<-as.numeric(t>0)
  
  
  chronicobstructivepulmonarydisease<-as.character(c(490:496, 4900:4969, 49000:49699))
  t1<-as.numeric(X$DX1%in%chronicobstructivepulmonarydisease)
  t2<-as.numeric(X$DX2%in%chronicobstructivepulmonarydisease)
  t3<-as.numeric(X$DX3%in%chronicobstructivepulmonarydisease)
  t4<-as.numeric(X$DX4%in%chronicobstructivepulmonarydisease)
  t5<-as.numeric(X$DX5%in%chronicobstructivepulmonarydisease)
  t6<-as.numeric(X$DX6%in%chronicobstructivepulmonarydisease)
  t7<-as.numeric(X$DX7%in%chronicobstructivepulmonarydisease)
  t8<-as.numeric(X$DX8%in%chronicobstructivepulmonarydisease)
  t9<-as.numeric(X$DX9%in%chronicobstructivepulmonarydisease)
  t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
  COPD<-as.numeric(t>0)
  
  
  cancer<-as.character(c(140:209, 1400:2099, 14000:20999,  235:239,2350:2399, 23500:23999))
  t1<-as.numeric(X$DX1%in%cancer)
  t2<-as.numeric(X$DX2%in%cancer)
  t3<-as.numeric(X$DX3%in%cancer)
  t4<-as.numeric(X$DX4%in%cancer)
  t5<-as.numeric(X$DX5%in%cancer)
  t6<-as.numeric(X$DX6%in%cancer)
  t7<-as.numeric(X$DX7%in%cancer)
  t8<-as.numeric(X$DX8%in%cancer)
  t9<-as.numeric(X$DX9%in%cancer)
  t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
  CANCER<-as.numeric(t>0)
  
  
  cerebrovasculardisease<-as.character(c(430:438,  4300:4389, 43000:43899))
  t1<-as.numeric(X$DX1%in%cerebrovasculardisease)
  t2<-as.numeric(X$DX2%in%cerebrovasculardisease)
  t3<-as.numeric(X$DX3%in%cerebrovasculardisease)
  t4<-as.numeric(X$DX4%in%cerebrovasculardisease)
  t5<-as.numeric(X$DX5%in%cerebrovasculardisease)
  t6<-as.numeric(X$DX6%in%cerebrovasculardisease)
  t7<-as.numeric(X$DX7%in%cerebrovasculardisease)
  t8<-as.numeric(X$DX8%in%cerebrovasculardisease)
  t9<-as.numeric(X$DX9%in%cerebrovasculardisease)
  t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
  CERVASD<-as.numeric(t>0)
  
  
  heartfailure<-as.character(c(428, 4280:4289, 42800:42899))
  t1<-as.numeric(X$DX1%in%heartfailure)
  t2<-as.numeric(X$DX2%in%heartfailure)
  t3<-as.numeric(X$DX3%in%heartfailure)
  t4<-as.numeric(X$DX4%in%heartfailure)
  t5<-as.numeric(X$DX5%in%heartfailure)
  t6<-as.numeric(X$DX6%in%heartfailure)
  t7<-as.numeric(X$DX7%in%heartfailure)
  t8<-as.numeric(X$DX8%in%heartfailure)
  t9<-as.numeric(X$DX9%in%heartfailure)
  t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
  HF<-as.numeric(t>0)
  
  anemia<-as.character(c(2819,2820, 2500:2813,28300:28599))
  t1<-as.numeric(X$DX1%in%anemia)
  t2<-as.numeric(X$DX2%in%anemia)
  t3<-as.numeric(X$DX3%in%anemia)
  t4<-as.numeric(X$DX4%in%anemia)
  t5<-as.numeric(X$DX5%in%anemia)
  t6<-as.numeric(X$DX6%in%anemia)
  t7<-as.numeric(X$DX7%in%anemia)
  t8<-as.numeric(X$DX8%in%anemia)
  t9<-as.numeric(X$DX9%in%anemia)
  t<-t1+t2+t3+t4+t5+t6+t7+t8+t9
  ANEMIA<-as.numeric(t>0)
  
  X<-cbind(X, ANEMIA, HF, CERVASD, CANCER, COPD, AFIB, RENAL,DIABETES, HYPERTENSION)
  return(X)
}
cas3<-tablemaker1(cas2)  ##these were originally cas2<-tablemaker1(cas1) this affects code later on, due to to how the variable names are incremenetned
con3<-tablemaker1(con2)


countymaker<-function(X){
  
  atl<-c(8037,8201,8203,8205,8213,8215,8217,8220,8221,8225,8231,8232,8234,8240,8241,8244,8310,8317,8319,8326,8330,8340,8341,8342,8346,8350,8401,8402,8403,8404,8405,8406)
  
  ber<-c(7010,7020,7022,7024,7026,7031,7057,7070,7071,7072, 7073, 7074, 7075, 7401, 7407, 7410, 7417, 7423, 7430, 7432, 7436, 7446,7450,7451,7452,7458,7463,7481,7495,7601,7602,7603,7604,7605,7606,7607,7608,7620,7621,7624,7626,7627,7628, 7630,
         7631, 7632, 7640, 7641, 7642, 7643, 7644, 7645, 7646, 7647, 7648, 7649, 7650, 7652, 7653, 7656, 7657, 7660, 7661, 7662, 7663, 7666,7670, 7675, 7676, 7677, 7699)
  
  bur<-c(8010, 8011, 8015, 8016, 8019, 8022, 8036, 8041, 8042, 8046, 8048, 8052, 8053, 8054, 8055, 8057, 8060, 8064, 8065, 8068, 8073, 8075,8076, 8077, 8088, 8224, 8505, 8511, 8515, 8518, 8554, 8562, 8640, 8641)
  
  cam<-c(8002, 8003, 8004, 8007, 8009, 8012, 8018, 8021, 8026, 8029, 8030, 8031, 8033, 8034, 8035, 8043, 8045, 8049, 8059, 8078, 8081, 8083,8084, 8089, 8091, 8095, 8099, 8101, 8102, 8103, 8104, 8105, 8106, 8107, 8108, 8109, 8110)
  
  cap<-c(8202, 8204, 8210, 8212, 8214, 8218, 8219, 8223, 8226, 8230, 8242, 8243, 8245, 8246, 8247, 8248, 8250, 8251, 8252, 8260, 8270)
  
  cum<-c(8302, 8311, 8313, 8314, 8315, 8316, 8320, 8321, 8323, 8324, 8327, 8329, 8332, 8345, 8348, 8349, 8352, 8353, 8360, 8361, 8362)
  
  ess<-c(7003,7004, 7000, 7006, 7007, 7009, 7017, 7018, 7019, 7021, 7028, 7039, 7040, 7041, 7042, 7043, 7044, 7050, 7051, 7052, 7068, 7078, 7079,7101, 7102, 7103, 7104, 7105, 7106, 7107, 7108, 7109, 7110, 7111, 7112, 7114, 7175, 7182, 7184, 7188, 7189, 7191, 7192, 7193, 7194,
         7195, 7198, 7199)
  
  glo<-c(8014, 8020, 8025, 8027, 8028, 8032, 8039, 8051, 8056, 8061, 8062, 8063, 8066, 8071, 8074, 8080, 8085, 8086, 8090, 8093, 8094, 8096,8097, 8312, 8322, 8328, 8343, 8344)
  
  hud<-c(7002, 7029, 7030, 7032, 7047, 7086, 7087, 7093, 7094, 7096, 7097, 7099, 7302, 7303, 7304, 7305, 7306, 7307, 7308, 7309, 7310, 7311,7395, 7399)
  
  hun<-c(7830, 7831, 7979, 8530, 8551, 8556, 8557, 8559, 8801, 8802, 8803, 8804, 8809, 8822, 8825, 8826, 8827, 8829, 8833, 8834, 8848, 8858,8867, 8868, 8870, 8885, 8887, 8888, 8889)
  
  mer<-c(8512, 8520, 8525, 8534, 8540, 8541, 8542, 8543, 8544, 8550, 8560, 8561, 8601, 8602, 8603, 8604, 8605, 8606, 8607, 8608, 8609, 8610,
         8611, 8618, 8619, 8620, 8625, 8628, 8629, 8638, 8645, 8646, 8647, 8648, 8650, 8666, 8690, 8691, 8695)
  
  mid<-c(7001, 7008, 7064, 7067, 7077, 7080, 7095, 8536, 8810, 8812, 8816, 8817, 8818, 8820, 8824, 8828, 8830, 8831, 8832, 8837, 8840, 8846,8850, 8852, 8854, 8855, 8857, 8859, 8861, 8862, 8863, 8871, 8872, 8879, 8882, 8884, 8899, 8901, 8902, 8903, 8904, 8905, 8906, 8922,8933, 8988, 8989)
  
  mon<-c(7701, 7702, 7703, 7704, 7709, 7710, 7711, 7712, 7715, 7716, 7717, 7718, 7719, 7720, 7721, 7722, 7723, 7724, 7726, 7727, 7728, 7730,7731, 7732, 7733, 7734, 7735, 7737, 7738, 7739, 7740, 7746, 7747, 7748, 7750, 7751, 7752, 7753, 7754, 7755, 7756, 7757, 7758, 7760,
         7762, 7763, 7764, 7765, 7799, 8501, 8510, 8514, 8526, 8535, 8555, 8720, 8730, 8736, 8750)
  
  mor<-c(7005, 7034, 7035, 7045, 7046, 7054, 7058, 7082, 7405, 7438, 7440, 7444, 7457, 7801, 7802, 7803, 7806, 7828, 7834, 7836, 7842, 7845,7847, 7849, 7850, 7852, 7853, 7856, 7857, 7866, 7869, 7870, 7876, 7878, 7885, 7926, 7927, 7928, 7930, 7932, 7933, 7935, 7936, 7940,
         7945, 7946, 7950, 7960, 7961, 7962, 7963, 7970, 7976, 7980, 7981, 7983, 7999)
  
  oce<-c(8005, 8006, 8008, 8050, 8087, 8092, 8527, 8533, 8701, 8721, 8722, 8723, 8724, 8731, 8732, 8733, 8734, 8735, 8738, 8739, 8740, 8741,8742, 8751, 8752, 8753, 8754, 8755, 8756, 8757, 8758, 8759)
  
  pas<-c(7011, 7012, 7013, 7014, 7015, 7055, 7403, 7420, 7421, 7424, 7435, 7442, 7456, 7465, 7470, 7474, 7477, 7480, 7501, 7502, 7503, 7504,7505, 7506, 7507, 7508, 7509, 7510, 7511, 7512, 7513, 7514, 7522, 7524, 7533, 7538, 7543, 7544)
  
  sal<-c(8001, 8023, 8038, 8067, 8069, 8070, 8072, 8079, 8098, 8318, 8347)
  
  som<-c(7059, 7069, 7920, 7921, 7924, 7931, 7934, 7938, 7939, 7977, 7978, 8502, 8504, 8528, 8553, 8558, 8805, 8807, 8821, 8823, 8835, 8836,8844, 8853, 8869, 8873, 8875, 8876, 8880, 8890)
  
  sus<-c(7416, 7418, 7419, 7422, 7428, 7439, 7460, 7461, 7462, 7821, 7822, 7826, 7827, 7837, 7839, 7843, 7848, 7851, 7855, 7860, 7871, 7874, 7875, 7877, 7879, 7881, 7890)
  
  uni<-c(7016, 7023, 7027, 7033, 7036, 7060, 7061, 7062, 7063, 7065, 7066, 7076, 7081, 7083, 7088, 7090, 7091, 7092, 7201, 7202, 7203, 7204, 7205, 7206, 7207, 7208, 7901, 7902, 7922, 7974)
  
  war<-c(7820, 7823, 7825, 7829, 7832, 7833, 7838, 7840, 7844, 7846, 7863, 7865, 7880, 7882, 8808, 8865, 8886)
  
  
  
  county<-rep(0,nrow(X))
  d<- substr(as.character(as.numeric(X$ZIP)),1,4)%in% as.character(atl)
  county[d]="ATL"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4)%in% as.character(ber)
  county[d]="BER"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(bur)
  county[d]="BUR"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(cam)
  county[d]="CAM"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(cap)
  county[d]="CAP"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(cum)
  county[d]="CUM"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(ess)
  county[d]="ESS"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(glo)
  county[d]="GLO"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(hud)
  county[d]="HUD"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(hun)
  county[d]="HUN"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(mer)
  county[d]="MER"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(mid)
  county[d]="MID"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(mon)
  county[d]="MON"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(mor)
  county[d]="MOR"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(oce)
  county[d]="OCE"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(pas)
  county[d]="PAS"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(sal)
  county[d]="SAL"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(som)
  county[d]="SOM"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(sus)
  county[d]="SUS"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(uni)
  county[d]="UNI"
  d<- substr(as.character(as.numeric(X$ZIP)),1,4) %in% as.character(war)
  county[d]="WAR"
  
  X<-cbind(X, county)
  return(X)
}


cas4<-countymaker(cas3)
con4<-countymaker(con3)




countymaker2<-function(X){
  
  NORTHNJ<-c("BER", "ESS","HUD","MOR","PAS","SUS", "UNI", "WAR")
  CENTRALNJ<-c("HUN","MER", "MID", "MON", "SOM", "OCE")
  SOUTHERNJ<-c("ATL", "BUR", "CAM", "CAP", "CUM", "GLO", "SAL")
  
  y<-c(1:nrow(X))
  county2<-rep(0, nrow(X))
  
  a<-X$county%in%as.character(NORTHNJ)
  a<-as.numeric(a)
  a<-a*y
  county2[a]<-"NorthNJ"
  
  
  
  a<-X$county%in%as.character(CENTRALNJ)
  a<-as.numeric(a)
  a<-a*y
  county2[a]<-"CentralNJ"
  
  
  a<-X$county%in%as.character(SOUTHERNJ)
  a<-as.numeric(a)
  a<-a*y
  county2[a]<-"SouthernNJ"
  
  X<-cbind(X,county2)
  return(X)
}

cas5<-countymaker2(cas4)
con5<-countymaker2(con4)










##Using county maker on the total data
  total<-countymaker(total)
  total<-countymaker2(total)
  total<-tablemaker1(total)
  weirdLocationsCounty<-total[which(total$county == 0),] ##zip codes have weird formats so difficult to place them in a county/region
  View(weirdLocationsCounty)


##Chi-square tests for cath vs location & cath vs teaching

  cathLocTable<-table(total$`CASE?`,total$county2)
  cathTeachTable<-table(total$`CASE?`, total$Mor_Teach)
  
  
  
  weirdTeach<-total[which(!(total$Mor_Teach%in%levels(total$Mor_Teach))),]
  teachTable<-table(total$Mor_Teach)
  
  chiSqCathLoc<-chisq.test(cathLocTable)
  chiSqCathTeach<-chisq.test(cathTeachTable)

###Distribution of the number of beds
  bedDensity<-density(total$`# beds`[!is.na(total$`# beds`)])
  plot(bedDensity, main ="Distribution of Bed Sizes")
  
  bedDensity<-density(total$`# beds`[!is.na(total$`# beds`) & total$`# beds`<700])
  plot(bedDensity)
  
  levels(as.factor(total$`# beds`))
  
  bedSizes<-total$`# beds`[total$`# beds`<900]
  bedSizes<-sort(bedSizes)
  
  bedSizes[round(length(bedSizes)/3)]   ##cutoffs for bedSizes done in thirds
  bedSizes[round(length(bedSizes)/3)*2]
  
  bedDensity$x

#The cutoffs - bigger than 770 we decided as outliers
  length(bedSizes[bedSizes<328])        ##0-327
  length(bedSizes[bedSizes<504 & bedSizes>=328]) ##328-503
  length(bedSizes[bedSizes>=504 & bedSizes<900])  ##504-899
  length(bedSizes[total$`# beds`>=900])

######
  
  bedMaker<-function(X){
    a<-rep(0,nrow(X))
    a[which(X$`# beds`<328)]<-'small'
    a[which(X$`# beds`<504 & X$`# beds`>=328)]<-'medium'
    a[which(X$`# beds`>=504 & X$`# beds`<900)]<-'large'
    a[which(X$`# beds`>=900)]<-'xlarge'
    X<-cbind(X,a)
    colnames(X)[ncol(X)]<-'BEDCAT'
    return(X)
  }
  
  total<-bedMaker(total)


###Chi Square Test for Cath vs Bed Size

  tempTotal<-total[which(total$BEDCAT!=0),]  ##Certain hospitals did not match
  tempTotal$BEDCAT<-factor(tempTotal$BEDCAT)
  cathBedTable<-table(tempTotal$`CASE?`,tempTotal$BEDCAT)
  chiSqCathBed<-chisq.test(cathBedTable, correct )

###Correlations using Cramer's V
  cv.test = function(x,y) {
    CV = sqrt(chisq.test(x, y, correct=FALSE)$statistic /
                (length(x) * (min(length(unique(x)),length(unique(y))) - 1)))
    print.noquote("Cramér V / Phi:")
    return(as.numeric(CV))
  }

  cv.test(tempTotal$`CASE?`,tempTotal$BEDCAT)
  cv.test(tempTotal$`CASE?`,tempTotal$county2)
  cv.test(tempTotal$`CASE?`,tempTotal$Mor_Teach)

  
###Writing Tables to a csv
  write.table(cathTeachTable, "cathTable.csv", col.names=TRUE, sep=",")
  write.table(cathBedTable, "cathTable.csv", col.names=FALSE, sep=",", append=TRUE)
  write.table(cathLocTable, "cathTable.csv", col.names=FALSE, sep=",", append=TRUE)

##Cleaning Variables up to make them easier for the logistic regression 
  tempTotal<-tempTotal[which(tempTotal$county2!=0),]
  tempTotal$county2<-factor(tempTotal$county2)
  
  tempTotal$BEDCAT<-relevel(tempTotal$BEDCAT, ref="small") 
  
  tempTotal$Mor_Teach<-as.character(tempTotal$Mor_Teach)
  tempTotal$Mor_Teach[which(tempTotal$Mor_Teach=="AT")]<-"ATC"
  tempTotal$Mor_Teach[which(tempTotal$Mor_Teach=="C")]<-"ATC"
  tempTotal$Mor_Teach<-factor(tempTotal$Mor_Teach)
  
  tempTotal$PRIME<-as.character(tempTotal$PRIME)
  tempTotal$PRIME[(which(tempTotal$PRIME=="008"))]<-"other"
  tempTotal$PRIME[(which(tempTotal$PRIME=="007"))]<-"other"
  tempTotal$PRIME<-factor(tempTotal$PRIME)
  
  tempTotal$PRIME<-relevel(tempTotal$PRIME,ref="COMMERCIAL")
  
###Logistic Regression
  logFit<-glm(tempTotal$`CASE?`~tempTotal$BEDCAT + tempTotal$county2 + tempTotal$Mor_Teach + tempTotal$PRIME + tempTotal$SEX +tempTotal$AGE +
                tempTotal$ANEMIA +tempTotal$CERVASD +tempTotal$CANCER +tempTotal$COPD +tempTotal$AFIB + tempTotal$DIABETES +tempTotal$HYPERTENSION, 
              family="binomial")
  reducedLogFit<-step(logFit)
  summary(logFit)
  summary(reducedLogFit)
  
  
  regionLogFit<-multinom(tempTotal$county2~tempTotal$`CASE?`+ tempTotal$BEDCAT + tempTotal$Mor_Teach + tempTotal$PRIME + tempTotal$SEX +tempTotal$AGE +
                           tempTotal$ANEMIA +tempTotal$CERVASD +tempTotal$CANCER +tempTotal$COPD +tempTotal$AFIB + tempTotal$DIABETES +tempTotal$HYPERTENSION)
  summary(regionLogFit)
  
  
###Formatting Dates to Years
  
  dates<-as.Date(tempTotal$ADMDAT)
  yearlyDates<-format(dates, format="%Y")
  tempTotal<-cbind(tempTotal,yearlyDates)
  colnames(tempTotal)[ncol(tempTotal)]<-"ADMYR"
  
###Creating Table for Catheterization by Year and County
  
  chestPain<-as.data.frame(table(tempTotal$ADMYR))
  chestPainRegion<-as.data.frame(table(tempTotal$ADMYR,tempTotal$county2))
  cathYear<-as.data.frame(table(tempTotal$ADMYR, tempTotal$`CASE?`)) 
  cathYearRegion<-as.data.frame(table(tempTotal$ADMYR, tempTotal$county2, tempTotal$`CASE?`))
  
###Calculating Crude Rates & Percents
  
  chestPainCrudeRate<-(chestPain$Freq/popTable)*100000
  
  cathCasesYear<-cathYear$Freq[which(cathYear$Var2==1)]
  cathCrudeRate<-(cathCasesYear/popTable)*100000
  
  cathChestPainPercent<-(cathCasesYear/chestPain$Freq)*100
  
  
  cathCasesRegion<-lapply(c("NorthNJ","CentralNJ","SouthernNJ"), function(x){
    cathYearRegion$Freq[which(cathYearRegion$Var3==1 & cathYearRegion$Var2==x)]
  })
  
  cathRegionRates<-lapply(c(1:3), function(x){
    (cathCasesRegion[[x]]/regionPopTable[x,])*100000
  })
  
  chestPainCasesRegion<-lapply(c("NorthNJ","CentralNJ","SouthernNJ"), function(x){
    chestPainRegion$Freq[which(chestPainRegion$Var2==x)]
  })
  
  cathRegionChestPainPercent<-lapply(c(1:3), function(x){
    (cathCasesRegion[[x]]/chestPainCasesRegion[[x]])*100
  })
  
###Putting it all into a data frame
  ratesDataFrame<-cbind(chestPainCrudeRate, cathCrudeRate,cathChestPainPercent, cathRegionRates[[1]], cathRegionRates[[2]], cathRegionRates[[3]],
        cathRegionChestPainPercent[[1]], cathRegionChestPainPercent[[2]], cathRegionChestPainPercent[[3]], c(1994:2014) )
  
  colnames(ratesDataFrame)<-c("ChestPainCrudeRate","CathCrudeRate","CathPercent","CathRateNorth","CathRateCentral","CathRateSouth",
                              "CathPercentNorth","CathPercentCentral","CathPercentSouth","Year")
  rownames(ratesDataFrame)<-c(1:21)
  
  ratesDataFrame<-as.data.frame(ratesDataFrame)
####Graphs of Crude Rates and Percents
  
  install.packages("ggplot2")
  library(ggplot2)
  
  ggplot(ratesDataFrame, aes(x=Year, y=ChestPainCrudeRate) )+
    geom_line(color="red",size=1.3)+
    geom_point(color="red",size=3)+
    labs(x="Year",y="Rate per 100,000",title=" Crude Rate of Chest Pain in New Jersey")
  
  ggplot(ratesDataFrame, aes(x=Year, y=CathCrudeRate) )+
    geom_line(color="blue",size=1.3)+
    geom_point(color="blue",size=3)+
    labs(x="Year",y="Rate per 100,000",title=" Crude Rate of Catheterization in New Jersey")
  
  ggplot(ratesDataFrame, aes(x=Year, y=CathPercent) )+
    geom_line(color="green",size=1.3)+
    geom_point(color="green",size=3)+
    labs(x="Year",y="Percent",title="Percentage of Chest Pain Admissions with Catheterization in New Jersey")
  
  
  ggplot(ratesDataFrame, aes(x=Year))+
    geom_line(y=ratesDataFrame$CathRateNorh, color="green",size=1.3)
  
  melt(ratesDataFrame$CathRate)
  



##popnumbers from 2014 county rank data
popnumbers<-c(275422,918888,451366,513539,96304,157785,787744,289586,652302,127050,368303,823041,
              629384,497999, 580470,502885,65744,327707,147442,543976,107653)

percentunder18<-c(.22745,.21905, .22360,.23705,.18245,.23782,.24450,.23552,.20412,.22102, .22151,.22339,.22919,.22874,.23243,.24408,.22723, 
                  .23962,.22388,.24015,.22490)

medianhouseholdincome<-c(50881,82001,74285,58572,55175,46491,51019,72248,56087,103301,67662,77044,81190,95236,59022,58073,57939,95574,
                         85036,64698,70560)

percentover18<-1-percentunder18

pop<-popnumbers*percentover18

pop<-round(pop)

county<-c("ATL", "BER", "BUR", "CAM","CAP","CUM","ESS","GLO","HUD","HUN","MER","MID","MON","MOR","OCE","PAS","SAL","SOM","SUS","UNI","WAR")

data1<-cbind(county, pop, medianhouseholdincome)



totalpopulationover18<-rep(0,3)
weightedmedianincome<-rep(0,3)


NORTHNJ<-c("BER", "ESS","HUD","MOR","PAS","SUS", "UNI", "WAR")
CENTRALNJ<-c("HUN","MER", "MID", "MON", "SOM", "OCE")
SOUTHERNJ<-c("ATL", "BUR", "CAM", "CAP", "CUM", "GLO", "SAL")
data1<-as.data.frame(data1)


a<-as.numeric(data1$county%in%NORTHNJ)
y<-c(1:nrow(data1))
a<-a*y
totalpopover18<-sum(pop[a])
w<-pop[a]/totalpopover18
averagemeadianincome<-sum(w*medianhouseholdincome[a])

totalpopulationover18[1]<-totalpopover18
weightedmedianincome[1]<-averagemeadianincome



a<-as.numeric(data1$county%in%CENTRALNJ)
y<-c(1:nrow(data1))
a<-a*y
totalpopover18<-sum(pop[a])
w<-pop[a]/totalpopover18
averagemeadianincome<-sum(w*medianhouseholdincome[a])

totalpopulationover18[2]<-totalpopover18
weightedmedianincome[2]<-averagemeadianincome




a<-as.numeric(data1$county%in%SOUTHERNJ)
y<-c(1:nrow(data1))
a<-a*y
totalpopover18<-sum(pop[a])
w<-pop[a]/totalpopover18
averagemeadianincome<-sum(w*medianhouseholdincome[a])

totalpopulationover18[3]<-totalpopover18
weightedmedianincome[3]<-averagemeadianincome

area<-c("NORTHNJ","CENTRALNJ","SOUTHNJ")



data2<-cbind(area, totalpopulationover18, weightedmedianincome)

data2<-as.data.frame(data2)



###Because we changed what cas2 and con2 were
cas2<-cas5
con2<-con5
##########


RACE2<-rep(0,nrow(cas2))
OTHERRACE<-as.character(c( ".",  "0", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D","M"))
RACE2<-as.character(rep(0,nrow(cas2)))
a<-as.character(cas2$RACE)%in%as.character(OTHERRACE)
a<-as.numeric(a)
y<-c(1:nrow(cas2))
a<-a*y
RACE2[a]<-as.character("OTHER")


WHITE<-as.character(c("1"))
a<-as.character(cas2$RACE)%in%as.character(WHITE)
a<-as.numeric(a)
y<-c(1:nrow(cas2))
a<-a*y
RACE2[a]<-as.character("WHITE")



BLACK<-as.character(c("2"))
a<-as.character(cas2$RACE)%in%as.character(BLACK)
a<-as.numeric(a)
y<-c(1:nrow(cas2))
a<-a*y
RACE2[a]<-as.character("BLACK")
cas2<-cbind(cas2, RACE2)




OTHERRACE<-as.character(c(".", "0", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "H", "I", "K", "M"))
RACE2<-as.character(rep(0,nrow(con2)))
a<-as.character(con2$RACE)%in%as.character(OTHERRACE)
a<-as.numeric(a)
y<-c(1:nrow(con2))
a<-a*y
RACE2[a]<-as.character("OTHER")


WHITE<-as.character(c("1"))
a<-as.character(con2$RACE)%in%as.character(WHITE)
a<-as.numeric(a)
y<-c(1:nrow(con2))
a<-a*y
RACE2[a]<-as.character("WHITE")



BLACK<-as.character(c("2"))
a<-as.character(con2$RACE)%in%as.character(BLACK)
a<-as.numeric(a)
y<-c(1:nrow(con2))
a<-a*y
RACE2[a]<-as.character("BLACK")
con2<-cbind(con2, RACE2)





INSURANCE<-rep(0, nrow(cas2))
OTHER<-as.character(c("07","008"))
a<-as.numeric(as.character(cas2$PRIME)%in%as.character(OTHER))
y<-c(1:nrow(cas2)) 
a<-a*y
INSURANCE[a]<-as.character("OTHER")

a<-as.numeric(as.character(cas2$PRIME)%in%as.character("BLUE CROSS PLANS"))
a<-a*y
INSURANCE[a]<-as.character("BLUE CROSS PLANS")   


a<-as.numeric(as.character(cas2$PRIME)%in%as.character("COMMERCIAL"))
a<-a*y
INSURANCE[a]<-as.character("COMMERCIAL")              

a<-as.numeric(as.character(cas2$PRIME)%in%as.character("HMO"))
a<-a*y
INSURANCE[a]<-as.character("HMO")       

a<-as.numeric(as.character(cas2$PRIME)%in%as.character("medicaid"))
a<-a*y
INSURANCE[a]<-as.character("medicaid")

a<-as.numeric(as.character(cas2$PRIME)%in%as.character("medicare"))
a<-a*y
INSURANCE[a]<-as.character("medicare")

a<-as.numeric(as.character(cas2$PRIME)%in%as.character("self pay"))
a<-a*y
INSURANCE[a]<-as.character("self pay") 

cas2<-cbind(cas2, INSURANCE)






INSURANCE<-rep(0, nrow(con2))
OTHER<-as.character(c("07","008"))
a<-as.numeric(as.character(con2$PRIME)%in%as.character(OTHER))
y<-c(1:nrow(con2)) 
a<-a*y
INSURANCE[a]<-as.character("OTHER")

a<-as.numeric(as.character(con2$PRIME)%in%as.character("BLUE CROSS PLANS"))
a<-a*y
INSURANCE[a]<-as.character("BLUE CROSS PLANS")   


a<-as.numeric(as.character(con2$PRIME)%in%as.character("COMMERCIAL"))
a<-a*y
INSURANCE[a]<-as.character("COMMERCIAL")              

a<-as.numeric(as.character(con2$PRIME)%in%as.character("HMO"))
a<-a*y
INSURANCE[a]<-as.character("HMO")       

a<-as.numeric(as.character(con2$PRIME)%in%as.character("medicaid"))
a<-a*y
INSURANCE[a]<-as.character("medicaid")

a<-as.numeric(as.character(con2$PRIME)%in%as.character("medicare"))
a<-a*y
INSURANCE[a]<-as.character("medicare")

a<-as.numeric(as.character(con2$PRIME)%in%as.character("self pay"))
a<-a*y
INSURANCE[a]<-as.character("self pay") 

con2<-cbind(con2, INSURANCE)





___________________________________________________________________________________________________________________________
____________________________________________________________________________________________________________________________



tablemaker2<-function(X){
  n1<-nrow(X)
  VariableName<-c("ANEMIA", "HF", "CERVASD", "CANCER", "COPD", "AFIB", "RENAL", "DIABETES", "HYPERTENSION")
  FREQ<-c(sum(X$ANEMIA),sum(X$HF),sum(X$CERVASD),sum(X$CANCER),sum(X$COPD),sum(X$AFIB),sum(X$RENAL),sum(X$DIABETES),
          sum(X$HYPERTENSION)) 
  PERCENT<-c(sum(X$ANEMIA)/n1,  sum(X$HF)/n1,sum(X$CERVASD)/n1,sum(X$CANCER)/n1,sum(X$COPD)/n1,
             sum(X$AFIB)/n1,sum(X$RENAL)/n1,sum(X$DIABETES)/n1,sum(X$HYPERTENSION)/n1) 
  
  
  results<-cbind(VariableName, FREQ, PERCENT)
  return(results)
}
cas<-tablemaker2(cas1)
con<-tablemaker2(con1)

numberexcluded<-c(0)
for (j in 2:23){
  i=j-1
  a<-numbers2[j]-numbers2[i]
  numberexcluded<-c(numberexcluded, a)
}
EXCLUSIONCODE<-c(0, 424,391,392,394,395,396,397,398,422,425,428,78652,410,411, 412,413,414,420,423,421,441,41519)
FREQ<-numbers2
population<-cbind(EXCLUSIONCODE, FREQ, numberexcluded)




_________________________________________________________________________________________________________________________________________________________________________________________________________________________________

----------------------------------------------------------------------------------------------------------------------------------------
add one colomn to each ocuntry with the population plus income:

2014 info:
new jersey as a whole
8 864 590     22.859                    690705

county    population     percent under 18          median income      
atlantic  275422              .22745,                     50881,     
bergen    918888              .21905,                     82001,
bur       451366              .22360,                     74285,
cam       513539              .23705,                     58572,
cap       96304               .18245,                     55175,
cum        157785             .23782,                     46491,
ess        787744             .24450,                     51019,
glo        289586             .23552,                     72248,
hudson      652302            .20412,                     56087,
hun         127050            .22102,                     103301,
mer        368303             .22151,                     67662,
mid        823041             .22339,                     77044,
mon        629384             .22919,                     81190,
mor        497999             .22874,                     95236,
oce        580470             .23243,                     59022,
pas        502885             .24408,                     58073,
sal         65744             .22723,                     57939,
som        327707             .23962,                     95574,
sus        147442             .22388,                     85036,
uni        543976             .24015,                     64698,
war        107653             .22490                      70560

-------------------------------------------------------------------------------------------------------------------------------------------



--------------

tables based on the information:


n1<-nrow(cas2)
tsca<-table(cas2$SEX)
ptsca<-tsca/n1



trca<-table(cas2$RACE2)                  
ptrca<-table(cas2$RACE2)/n1


tica<-table(cas2$INSURANCE)
ptica<-tica/n1


CATEGORY<-c("FEMALE", "MALE", "BLACK", "OTHER", "WHITE", "BLUECROSS","COMMERCIAL","HMO","MEDICAID","MEDICARE","OTHER","SELFPAY", "AGE")
FREQ<-c(as.numeric(tsca[1]), as.numeric(tsca[2]), as.numeric(trca[1]), as.numeric(trca[2]), as.numeric(trca[3]), as.numeric(tica[1]),as.numeric(tica[2]),
        as.numeric(tica[3]),as.numeric(tica[4]),as.numeric(tica[5]),as.numeric(tica[6]),as.numeric(tica[7]), as.numeric(mean(cas2$AGE)))
PER<-c(as.numeric(ptsca[1]), as.numeric(ptsca[2]), as.numeric(ptrca[1]), as.numeric(ptrca[2]), as.numeric(ptrca[3]), as.numeric(ptica[1]),as.numeric(ptica[2]),
       as.numeric(ptica[3]),as.numeric(ptica[4]),as.numeric(ptica[5]),as.numeric(ptica[6]),as.numeric(ptica[7]), as.numeric(sd(cas2$AGE)))
TABLEA<-cbind(CATEGORY, FREQ, PER)
TABLEA<-rbind(rep("cases",3), TABLEA)





n2<-nrow(con2)
tsca<-table(con2$SEX)
ptsca<-tsca/n2

trca<-table(con2$RACE2)                  
ptrca<-table(con2$RACE2)/n2

tica<-table(con2$INSURANCE)
ptica<-tica/n2


CATEGORY<-c("FEMALE", "MALE", "BLACK", "OTHER", "WHITE", "BLUECROSS","COMMERCIAL","HMO","MEDICAID","MEDICARE","OTHER","SELFPAY", "AGE")
FREQ<-c(as.numeric(tsca[1]), as.numeric(tsca[2]), as.numeric(trca[1]), as.numeric(trca[2]), as.numeric(trca[3]), as.numeric(tica[1]),as.numeric(tica[2]),
        as.numeric(tica[3]),as.numeric(tica[4]),as.numeric(tica[5]),as.numeric(tica[6]),as.numeric(tica[7]), as.numeric(mean(con2$AGE)))
PER<-c(as.numeric(ptsca[1]), as.numeric(ptsca[2]), as.numeric(ptrca[1]), as.numeric(ptrca[2]), as.numeric(ptrca[3]), as.numeric(ptica[1]),as.numeric(ptica[2]),
       as.numeric(ptica[3]),as.numeric(ptica[4]),as.numeric(ptica[5]),as.numeric(ptica[6]),as.numeric(ptica[7]), as.numeric(sd(con2$AGE)))
TABLEC<-cbind(CATEGORY, FREQ, PER)
TABLEC<-rbind(rep("controls",3), TABLEC)


TABLEA<-cbind(TABLEA, TABLEC)


TABLEB<-rbind(c(rep("cases",3) , rep("controls",3) ),TABLEB )




--------------------------------------------------------------------------------------------------------------------------------------------------------------------

ttablemaker3<-function(X,Y){
  
  VariableName<-c("ANEMIA", "HF", "CERVASD", "CANCER", "COPD", "AFIB", "RENAL", "DIABETES", "HYPERTENSION")
  
  n1<-as.numeric(as.character(Y$totalpopulationover18[1]))
  n2<-as.numeric(as.character(Y$totalpopulationover18[2]))
  n3<-as.numeric(as.character(Y$totalpopulationover18[3]))
  
  
  a<-as.numeric(X$county2%in%as.character(c("NorthNJ")))
  y<-c(1:nrow(X))
  a<-a*y
  objecta<-X[a,]
  
  
  
  FREQ<-c(sum(objecta$ANEMIA),sum(objecta$HF),sum(objecta$CERVASD),sum(objecta$CANCER),sum(objecta$COPD),sum(objecta$AFIB),sum(objecta$RENAL),sum(objecta$DIABETES),
          sum(objecta$HYPERTENSION)) 
  
  RATEper100000<-100000*c(sum(objecta$ANEMIA)/n1,  sum(objecta$HF)/n1,sum(objecta$CERVASD)/n1,sum(objecta$CANCER)/n1,sum(objecta$COPD)/n1,
                          sum(objecta$AFIB)/n1,sum(objecta$RENAL)/n1,sum(objecta$DIABETES)/n1,sum(objecta$HYPERTENSION)/n1) 
  
  resultsa<-cbind(VariableName, FREQ, RATEper100000)
  resultsa<-rbind(rep("NorthNJ",3), resultsa)
  
  
  a<-as.numeric(X$county2%in%as.character(c("CentralNJ")))
  y<-c(1:nrow(X))
  a<-a*y
  objectb<-X[a,]
  FREQ<-c(sum(objectb$ANEMIA),sum(objectb$HF),sum(objectb$CERVASD),sum(objectb$CANCER),sum(objectb$COPD),sum(objectb$AFIB),sum(objectb$RENAL),sum(objectb$DIABETES),
          sum(objectb$HYPERTENSION)) 
  RATEper100000<-100000*c(sum(objectb$ANEMIA)/n2,  sum(objectb$HF)/n2,sum(objectb$CERVASD)/n2,sum(objectb$CANCER)/n2,sum(objectb$COPD)/n2,
                          sum(objectb$AFIB)/n2,sum(objectb$RENAL)/n2,sum(objectb$DIABETES)/n2,sum(objectb$HYPERTENSION)/n2) 
  resultsb<-cbind(VariableName, FREQ, RATEper100000)
  resultsb<-rbind(rep("CentralNJ",3), resultsb)
  
  
  
  
  
  a<-as.numeric(X$county2%in%as.character(c("SouthernNJ")))
  y<-c(1:nrow(X))
  a<-a*y
  objectc<-X[a,]
  
  
  
  FREQ<-c(sum(objectc$ANEMIA),sum(objectc$HF),sum(objectc$CERVASD),sum(objectc$CANCER),sum(objectc$COPD),sum(objectc$AFIB),sum(objectc$RENAL),sum(objectc$DIABETES),
          sum(objectc$HYPERTENSION)) 
  
  
  
  RATEper100000<-100000*c(sum(objectc$ANEMIA)/n3,  sum(objectc$HF)/n3,sum(objectc$CERVASD)/n3,sum(objectc$CANCER)/n3,sum(objectc$COPD)/n3,
                          sum(objectc$AFIB)/n3,sum(objectc$RENAL)/n3,sum(objectc$DIABETES)/n3,sum(objectc$HYPERTENSION)/n3) 
  
  
  
  resultsc<-cbind(VariableName, FREQ, RATEper100000)
  resultsc<-rbind(rep("SouthernNJ",3), resultsc)
  
  
  
  results<-cbind(resultsa, resultsb, resultsc)
  
  
  y1<-nrow(objecta)
  y2<-nrow(objectb)
  y3<-nrow(objectc)
  
  rate1<-100000*y1/n1
  rate2<-100000*y2/n2
  rate3<-100000*y3/n3
}






numberofcases<-rep(0,21)
numberofcasesper100000<-rep(0,21)
for(i in 1:21){
  a<-as.numeric(cas2$county%in%as.character(data1$county[i]))
  y<-c(1:nrow(cas2))
  a<-a*y
  b<-cas2[a,]
  numberofcases[i]<-nrow(b)
  numberofcasesper100000[i]<-numberofcases[i]/as.numeric(data1$pop[i])
}
data<-cbind(data1[1], numberofcases, data1[2],numberofcasesper100000, data1[3])

d94<-subset(cas2, ADMDAT<"1995-01-01")
d95<-subset(cas2, ADMDAT<"1996-01-01" & ADMDAT> "1994-12-31")
d96<-subset(cas2, ADMDAT<"1997-01-01" & ADMDAT> "1995-12-31")
d97<-subset(cas2, ADMDAT<"1998-01-01" & ADMDAT> "1996-12-31")
d98<-subset(cas2, ADMDAT<"1999-01-01" & ADMDAT> "1997-12-31")
d99<-subset(cas2, ADMDAT<"2000-01-01" & ADMDAT> "1998-12-31")
d00<-subset(cas2, ADMDAT<"2001-01-01" & ADMDAT> "1999-12-31")
d01<-subset(cas2, ADMDAT<"2002-01-01" & ADMDAT> "2000-12-31")
d02<-subset(cas2, ADMDAT<"2003-01-01" & ADMDAT> "2001-12-31")
d03<-subset(cas2, ADMDAT<"2004-01-01" & ADMDAT> "2002-12-31")
d04<-subset(cas2, ADMDAT<"2005-01-01" & ADMDAT> "2003-12-31")
d05<-subset(cas2, ADMDAT<"2006-01-01" & ADMDAT> "2004-12-31")
d06<-subset(cas2, ADMDAT<"2007-01-01" & ADMDAT> "2005-12-31")
d07<-subset(cas2, ADMDAT<"2008-01-01" & ADMDAT> "2006-12-31")
d08<-subset(cas2, ADMDAT<"2009-01-01" & ADMDAT> "2007-12-31")
d09<-subset(cas2, ADMDAT<"2010-01-01" & ADMDAT> "2008-12-31")
d10<-subset(cas2, ADMDAT<"2011-01-01" & ADMDAT> "2009-12-31")
d11<-subset(cas2, ADMDAT<"2012-01-01" & ADMDAT> "2010-12-31")
d12<-subset(cas2, ADMDAT<"2013-01-01" & ADMDAT> "2011-12-31")
d13<-subset(cas2, ADMDAT<"2014-01-01" & ADMDAT> "2012-12-31")
d14<-subset(cas2, ADMDAT<"2015-01-01" & ADMDAT> "2013-12-31")


x<-c(1994:2014)
y<-rep(0,21)
y[1]<-nrow(d94)
y[2]<-nrow(d95)
y[3]<-nrow(d96)
y[4]<-nrow(d97)
y[5]<-nrow(d98)
y[6]<-nrow(d99)
y[7]<-nrow(d00)
y[8]<-nrow(d01)
y[9]<-nrow(d02)
y[10]<-nrow(d03)
y[11]<-nrow(d04)
y[12]<-nrow(d05)
y[13]<-nrow(d06)
y[14]<-nrow(d07)
y[15]<-nrow(d08)
y[16]<-nrow(d09)
y[17]<-nrow(d10)
y[18]<-nrow(d11)
y[19]<-nrow(d12)
y[20]<-nrow(d13)
y[21]<-nrow(d14)


NorthNJ
CentralNJ
SouthernNJ

y2<-rep(0,21)
y3<-rep(0,21)
y4<-rep(0,21)

y2[1]<-nrow(subset(d94,  county2%in% c("NorthNJ") ))
y2[2]<-nrow(subset(d95,  county2%in% c("NorthNJ") ))
y2[3]<-nrow(subset(d96,  county2%in% c("NorthNJ") ))
y2[4]<-nrow(subset(d97,  county2%in% c("NorthNJ") ))
y2[5]<-nrow(subset(d98,  county2%in% c("NorthNJ") ))
y2[6]<-nrow(subset(d99,  county2%in% c("NorthNJ") ))
y2[7]<-nrow(subset(d00,  county2%in% c("NorthNJ") ))
y2[8]<-nrow(subset(d01,  county2%in% c("NorthNJ") ))
y2[9]<-nrow(subset(d02,  county2%in% c("NorthNJ") ))
y2[10]<-nrow(subset(d03,  county2%in% c("NorthNJ") ))
y2[11]<-nrow(subset(d04,  county2%in% c("NorthNJ") ))
y2[12]<-nrow(subset(d05,  county2%in% c("NorthNJ") ))
y2[13]<-nrow(subset(d06,  county2%in% c("NorthNJ") ))
y2[14]<-nrow(subset(d07,  county2%in% c("NorthNJ") ))
y2[15]<-nrow(subset(d08,  county2%in% c("NorthNJ") ))
y2[16]<-nrow(subset(d09,  county2%in% c("NorthNJ") ))
y2[17]<-nrow(subset(d10,  county2%in% c("NorthNJ") ))
y2[18]<-nrow(subset(d11,  county2%in% c("NorthNJ") ))
y2[19]<-nrow(subset(d12,  county2%in% c("NorthNJ") ))
y2[20]<-nrow(subset(d13,  county2%in% c("NorthNJ") ))
y2[21]<-nrow(subset(d14,  county2%in% c("NorthNJ") ))


y3[1]<-nrow(subset(d94,  county2%in% c("CentralNJ")))
y3[2]<-nrow(subset(d95,  county2%in% c("CentralNJ")))
y3[3]<-nrow(subset(d96,  county2%in% c("CentralNJ")))
y3[4]<-nrow(subset(d97,  county2%in% c("CentralNJ")))
y3[5]<-nrow(subset(d98,  county2%in% c("CentralNJ")))
y3[6]<-nrow(subset(d99,  county2%in% c("CentralNJ")))
y3[7]<-nrow(subset(d00,  county2%in% c("CentralNJ")))
y3[8]<-nrow(subset(d01,  county2%in% c("CentralNJ")))
y3[9]<-nrow(subset(d02,  county2%in% c("CentralNJ")))
y3[10]<-nrow(subset(d03,  county2%in% c("CentralNJ")))
y3[11]<-nrow(subset(d04,  county2%in% c("CentralNJ")))
y3[12]<-nrow(subset(d05,  county2%in% c("CentralNJ")))
y3[13]<-nrow(subset(d06,  county2%in% c("CentralNJ")))
y3[14]<-nrow(subset(d07,  county2%in% c("CentralNJ")))
y3[15]<-nrow(subset(d08,  county2%in% c("CentralNJ")))
y3[16]<-nrow(subset(d09,  county2%in% c("CentralNJ")))
y3[17]<-nrow(subset(d10,  county2%in% c("CentralNJ")))
y3[18]<-nrow(subset(d11,  county2%in% c("CentralNJ")))
y3[19]<-nrow(subset(d12,  county2%in% c("CentralNJ")))
y3[20]<-nrow(subset(d13,  county2%in% c("CentralNJ")))
y3[21]<-nrow(subset(d14,  county2%in% c("CentralNJ")))





y4[1]<-nrow(subset(d94,  county2%in% c("SouthernNJ")))
y4[2]<-nrow(subset(d95,  county2%in% c("SouthernNJ")))
y4[3]<-nrow(subset(d96,  county2%in% c("SouthernNJ")))
y4[4]<-nrow(subset(d97,  county2%in% c("SouthernNJ")))
y4[5]<-nrow(subset(d98,  county2%in% c("SouthernNJ")))
y4[6]<-nrow(subset(d99,  county2%in% c("SouthernNJ")))
y4[7]<-nrow(subset(d00,  county2%in% c("SouthernNJ")))
y4[8]<-nrow(subset(d01,  county2%in% c("SouthernNJ")))
y4[9]<-nrow(subset(d02,  county2%in% c("SouthernNJ")))
y4[10]<-nrow(subset(d03,  county2%in% c("SouthernNJ")))
y4[11]<-nrow(subset(d04,  county2%in% c("SouthernNJ")))
y4[12]<-nrow(subset(d05,  county2%in% c("SouthernNJ")))
y4[13]<-nrow(subset(d06,  county2%in% c("SouthernNJ")))
y4[14]<-nrow(subset(d07,  county2%in% c("SouthernNJ")))
y4[15]<-nrow(subset(d08,  county2%in% c("SouthernNJ")))
y4[16]<-nrow(subset(d09,  county2%in% c("SouthernNJ")))
y4[17]<-nrow(subset(d10,  county2%in% c("SouthernNJ")))
y4[18]<-nrow(subset(d11,  county2%in% c("SouthernNJ")))
y4[19]<-nrow(subset(d12,  county2%in% c("SouthernNJ")))
y4[20]<-nrow(subset(d13,  county2%in% c("SouthernNJ")))
y4[21]<-nrow(subset(d14,  county2%in% c("SouthernNJ")))


yplot<-seq(50,2000, by=1950/20 )
plot(x,yplot, xlab="years", ylab="numberofcases")
plot(x,yplot, xlab="years", ylab="numberofcases",type="n")
lines(x,y, xlab="years", ylab="numberofcases")
lines(x,y2, xlab="years", ylab="numberofcases", col=2)
lines(x,y3, xlab="years", ylab="numberofcases", col=3)
lines(x,y4, xlab="years", ylab="numberofcases", col=4)
legend(2006, 1700, c("RED-NORTH", "GREEN-CENTRAL", "BLUE-SOUTH"))

------------------------------------------------------------------------------------------------------------------------
preliminary logistic regression:




-----------------------------------------------------------------------------------------------------------------------

hospital teaching ver non teaching hospital data


hospital numbers and counties:  which is a teaching hospital and which is non teaching.  





----------------------------------------------------------------------------------------------------------------


death and any cardiovascular disease.


glmnet for discrimantion along with bicluster.
Experimental.



paper 1:  group that was catherized


not catehrized


compared to the population can be matched () similar age and gender see if actuarial are the same


logistic propensity score to do the matching?
matched on age sex race exactly?









histroyofmi
priorCABG
PCI
priorstroke

data1<-con3[,18:25]
d1<-union(data1$DX2,data1$DX3)
d2<-union(data1$DX4,data1$DX5)
d3<-union(d1,d2)
d4<-union(d3,data1$DX6)
d5<-union(d4,data1$DX7)
d6<-union(d5,data1$DX8)
d7<-union(d6,data1$DX9)
Mcon3<-matrix(0,133242,4353)
for(i in 1:4353){
  a1<-as.character(data1[,1])%in%as.character(d7[i])
  a2<-as.character(data1[,2])%in%as.character(d7[i])
  a3<-as.character(data1[,3])%in%as.character(d7[i])
  a4<-as.character(data1[,4])%in%as.character(d7[i])
  a5<-as.character(data1[,5])%in%as.character(d7[i])
  a6<-as.character(data1[,6])%in%as.character(d7[i])
  a7<-as.character(data1[,7])%in%as.character(d7[i])
  a8<-as.character(data1[,8])%in%as.character(d7[i])
  a1<-as.numeric(a1)
  a2<-as.numeric(a2)
  a3<-as.numeric(a3)
  a4<-as.numeric(a4)
  a5<-as.numeric(a5)
  a6<-as.numeric(a6)
  a7<-as.numeric(a7)
  a8<-as.numeric(a8)
  a<-a1+a2+a3+a4+a5+a6+a7+a8
  Mcon3[,i]<-a
}
resultcon3<-rep(0,4353)a
for (i in 1:4353)
{resultcon3[i]<-sum(Mcon3[,i])}

resultcon3<-resultcon3[-177]
d10<-d7[-177]
diagcon3e<-resultcon3[resultcon3>2600]
a<-resultcon3>2600
y<-c(1:4352)




teaching, and teaching aem



