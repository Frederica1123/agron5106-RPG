###load sql data into R
install.packages("DBI")
install.packages("RMySQL")

library(DBI)
library(RMySQL)

connect <- DBI::dbConnect(RMySQL::MySQL(), dbname = "group_rpg",
                     host = "agron5106.cqli556wsu0m.us-east-1.rds.amazonaws.com",
                     post = 3306,
                     username = "r12621216", password = "Flash88156")
dbListTables(connect)
User_info <- dbGetQuery(connect,"SELECT Id,
                                        DisplayName,
                                        Location 
                                 FROM Users
                                 WHERE Location IS NOT NULL AND Id > 0;")


###add a new colume used to orginized country 
Country <- matrix(NA,nrow(User_info),1)
User_info <- cbind(User_info,Country)
User_info[,4] <- User_info[,3]
unique(User_info[[4]])

###create read a csv about USA state full name and Abbreviation
state <- read.csv("D:/生物數據/USA state.csv")
dbWriteTable(connect,"USA_State",state)

###USA
USA1 <- which(grepl("USA", User_info$Location))
USA2 <- which(grepl("United State", User_info$Location))
USA3 <- which(grepl("US", User_info$Location))
USA4 <- which(grepl("U.S.", User_info$Location))
User_info[USA1,4] <- "USA"
User_info[USA2,4] <- "USA"
User_info[USA3,4] <- "USA"
User_info[USA4,4] <- "USA"

State_USA <- c("AL","AK","AZ","AR","CA","CO","CT","DE","DC","FL","GA","HI","ID",
               "IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS",
               "MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK",
               "OR","PA","PR","RI","SC","SD","TN","TX","UT","VT","VA","WA",
               "WV","WI","WY")
for (su in 1:length(State_USA)) {
 USA5 <- which(grepl(State_USA[su], User_info$Location)) 
 User_info[USA5,4] <- "USA"
}

State_USA2 <- c("Alabama","Alaska","Arizona", "Arkansas","California","Colorado","Connecticut","Delaware",           
                "District of Columbia","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa",                
                "Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota",             
                "Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico",
                "New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania","Puerto Rico",
                "Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia",
                "Washington","West Virginia","Wisconsin","Wyoming")
                
for (i in 1:length(State_USA2)) {
  USA6 <- which(grepl(State_USA2[i], User_info$Location)) 
  User_info[USA6,4] <- "USA"
}
###Canada 
CND1 <- which(grepl("Canada", User_info$Location))
User_info[CND1,4] <- "Canada"
CND2 <- which(grepl("Canadá", User_info$Location))
User_info[CND2,4] <- "Canada"
CND3 <- which(grepl("Alberta", User_info$Location))
User_info[CND3,4] <- "Canada"

###Mexico 
MEX1 <- which(grepl("Mexico", User_info$Location))
User_info[MEX1,4] <- "Mexico"
MEX2 <- which(grepl("México", User_info$Location))
User_info[MEX2,4] <- "México"


###Colombia
COLO1 <- which(grepl("Colombia", User_info$Location))
User_info[COLO1,4] <- "Colombia"

###Brazil Brasil
BRZ1 <- which(grepl("Brazil", User_info$Location))
User_info[BRZ1,4] <- "Brazil"
BRZ2 <- which(grepl("Brasil", User_info$Location))
User_info[BRZ2,4] <- "Brazil"

###Argentina
AGT1 <- which(grepl("Argentina", User_info$Location))
User_info[AGT1,4] <- "Argentina"

###Peru
PR1 <- which(grepl("Peru", User_info$Location))
User_info[PR1,4] <- "Peru"

###Europe
EUR1 <- which(grepl("Europe", User_info$Location))
User_info[EUR1,4] <- "Europe"
EUR2 <- which(grepl("EU", User_info$Location))
User_info[EUR2,4] <- "Europe"

###France
FC1 <- which(grepl("France", User_info$Location))
User_info[FC1,4] <- "France"
FC2 <- which(grepl("Paris", User_info$Location))
User_info[FC2,4] <- "France"

###Switzerland 
SWL1 <- which(grepl("Switzerland", User_info$Location))
User_info[SWL1,4] <- "Switzerland"
SWL2 <- which(grepl("Schweiz", User_info$Location))
User_info[SWL2,4] <- "Switzerland"

###UK
UK1 <- which(grepl("United Kingdom", User_info$Location))
User_info[UK1,4] <- "UK"
UK2 <- which(grepl("UK", User_info$Location))
User_info[UK2,4] <- "UK"
UK3 <- which(grepl("England", User_info$Location))
User_info[UK3,4] <- "UK"
UK4 <- which(grepl("Scotland", User_info$Location))
User_info[UK4,4] <- "UK"
UK5 <- which(grepl("U.K.", User_info$Location))
User_info[UK5,4] <- "UK"
UK6 <- which(grepl("London", User_info$Location))
User_info[UK6,4] <- "UK"

###Ireland
IRL4 <- which(grepl("Ireland", User_info$Location))
User_info[IRL4,4] <- "Ireland"

###Finland
FL1 <- which(grepl("Finland", User_info$Location))
User_info[FL1,4] <- "Finland"

###Norway Norge
NW1 <- which(grepl("Norway", User_info$Location))
User_info[NW1,4] <- "Norway"
NW2 <- which(grepl("Norge", User_info$Location))
User_info[NW2,4] <- "Norway"

###Sweden 
SWD1 <- which(grepl("Sweden", User_info$Location))
User_info[SWD1,4] <- "Sweden"
SWD2 <- which(grepl("Sverige", User_info$Location))
User_info[SWD2,4] <- "Sweden"

###Denmark
DEM1 <- which(grepl("Denmark", User_info$Location))
User_info[DEM1,4] <- "Denmark"

###Germany
GM1 <- which(grepl("Germany", User_info$Location))
User_info[GM1,4] <- "Germany"
GM2 <- which(grepl("Deutschland", User_info$Location))
User_info[GM2,4] <- "Germany"

###Luxembourg
LXB1 <- which(grepl("Luxembourg", User_info$Location))
User_info[LXB1,4] <- "Luxembourg"

###Poland 
POL1 <- which(grepl("Poland", User_info$Location))
User_info[POL1,4] <- "Poland"
POL2 <- which(grepl("Polska", User_info$Location))
User_info[POL2,4] <- "Poland"
POL3 <- which(grepl("Polen", User_info$Location))
User_info[POL3,4] <- "Poland"

###Greece
GRE1 <- which(grepl("Greece", User_info$Location))
User_info[GRE1,4] <- "Greece"

###Belgium
BLG1 <- which(grepl("Belgium", User_info$Location))
User_info[BLG1,4] <- "Belgium"
BLG2 <- which(grepl("België", User_info$Location))
User_info[BLG2,4] <- "Belgium"

###Italy
ITA1 <- which(grepl("Italy", User_info$Location))
User_info[ITA1,4] <- "Italy"
ITA2 <- which(grepl("Italia", User_info$Location))
User_info[ITA2,4] <- "Italy"

###Netherland Nederländerna
NTL1 <- which(grepl("Netherland", User_info$Location))
User_info[NTL1,4] <- "Netherland"
NTL2 <- which(grepl("Nederländerna", User_info$Location))
User_info[NTL2,4] <- "Netherland"
NTL3 <- which(grepl("Nederland", User_info$Location))
User_info[NTL3,4] <- "Netherland"

###Czech Republic
CZR1 <- which(grepl("Czech Republic", User_info$Location))
User_info[CZR1,4] <- "Czech Republic"

###Lithuania
LITH1 <- which(grepl("Lithuania", User_info$Location))
User_info[LITH1,4] <- "Lithuania"

###Romania
ROMA1 <- which(grepl("Romania", User_info$Location))
User_info[ROMA1,4] <- "Romania"

###Latvia
LTV1 <- which(grepl("Latvia", User_info$Location))
User_info[LTV1,4] <- "Latvia"

###Estonia
ESN1 <- which(grepl("Estonia", User_info$Location))
User_info[ESN1,4] <- "Estonia"


###Hungary
HUG1 <- which(grepl("Hungary", User_info$Location))
User_info[HUG1,4] <- "Hungary"

###Serbia
SBA1 <- which(grepl("Serbia", User_info$Location))
User_info[SBA1,4] <- "Serbia"

###Spain
SPN1 <- which(grepl("Spain", User_info$Location))
User_info[SPN1,4] <- "Spain"
SPN2 <- which(grepl("España", User_info$Location))
User_info[SPN2,4] <- "Spain"

###Portugal
PTG1 <- which(grepl("Portugal", User_info$Location))
User_info[PTG1,4] <- "Portugal"

###Turkey
TUK1 <- which(grepl("Turkey", User_info$Location))
User_info[TUK1,4] <- "Turkey"
TUK2 <- which(grepl("Türkiye", User_info$Location))
User_info[TUK2,4] <- "Turkey"

###Cyprus
CYP1 <- which(grepl("Cyprus", User_info$Location))
User_info[CYP1,4] <- "Cyprus"

###Bulgaria
BGR1 <- which(grepl("Bulgaria", User_info$Location))
User_info[BGR1,4] <- "Bulgaria"

###Austria
AUSI1 <- which(grepl("Austria", User_info$Location))
User_info[AUSI1,4] <- "Austria"

###India
IND1 <- which(grepl("India", User_info$Location))
User_info[IND1,4] <- "India"

###Pakistan
PAKT1 <- which(grepl("Pakistan", User_info$Location))
User_info[PAKT1,4] <- "Pakistan"

###Iran
IRAN1 <- which(grepl("Iran", User_info$Location))
User_info[IRAN1,4] <- "Iran"

###Thailand
THAI1 <- which(grepl("Thailand", User_info$Location))
User_info[THAI1,4] <- "Thailand"

###Taiwan
TW1 <- which(grepl("Taiwan", User_info$Location))
User_info[TW1,4] <- "Taiwan"

###China
CHI1 <- which(grepl("China", User_info$Location))
User_info[CHI1,4] <- "China"
CHI2 <- which(grepl("中国", User_info$Location))
User_info[CHI1,4] <- "China"

###Hong Kong
HK1 <- which(grepl("Hong Kong", User_info$Location))
User_info[HK1,4] <- "Hong Kong"

###Japan
JAP1 <- which(grepl("Japan", User_info$Location))
User_info[JAP1,4] <- "Japan"
JAP2 <- which(grepl("Tokyo", User_info$Location))
User_info[JAP2,4] <- "Japan"

###South Korea
SKOR1 <- which(grepl("South Korea", User_info$Location))
User_info[SKOR1,4] <- "South Korea"
SKOR2 <- which(grepl("Korea", User_info$Location))
User_info[SKOR2,4] <- "South Korea"

###Malaysia
MLS1 <- which(grepl("Malaysia", User_info$Location))
User_info[MLS1,4] <- "Malaysia"

###Singapore
SGP1 <- which(grepl("Singapore", User_info$Location))
User_info[SGP1,4] <- "Singapore"

###Philippines
PHL1 <- which(grepl("Philippines", User_info$Location))
User_info[PHL1,4] <- "Philippines"

###Vietnam
VIET1 <- which(grepl("Vietnam", User_info$Location))
User_info[VIET1,4] <- "Vietnam"
VIET2 <- which(grepl("Viet Nam", User_info$Location))
User_info[VIET2,4] <- "Vietnam"

###Cambodia
CBD1 <- which(grepl("Cambodia", User_info$Location))
User_info[CBD1,4] <- "Cambodia"

###Nepal
NEP1 <- which(grepl("Nepal", User_info$Location))
User_info[NEP1,4] <- "Nepal"

###Kazakhstan
KZK1 <- which(grepl("Kazakhstan", User_info$Location))
User_info[KZK1,4] <- "Kazakhstan"

###Banglades
BGL1 <- which(grepl("Banglades", User_info$Location))
User_info[BGL1,4] <- "Banglades"
BGL2 <- which(grepl("Bangladesh", User_info$Location))
User_info[BGL2,4] <- "Banglades"

###Indonesia
INDS1 <- which(grepl("Indonesia", User_info$Location))
User_info[INDS1,4] <- "Indonesia"

###Israel
ISR1 <- which(grepl("Israel", User_info$Location))
User_info[ISR1,4] <- "Israel"

###Australia
ASL1 <- which(grepl("Australia", User_info$Location))
User_info[ASL1,4] <- "Australia"

###New Zealand
NZL1 <- which(grepl("New Zealand", User_info$Location))
User_info[NZL1,4] <- "New Zealand"

###Russia
RUS1 <- which(grepl("Russia", User_info$Location))
User_info[RUS1,4] <- "Russia"

###Belarus
BLR1 <- which(grepl("Belarus", User_info$Location))
User_info[BLR1,4] <- "Belarus"

###Egypt
EGY1 <- which(grepl("Egypt", User_info$Location))
User_info[EGY1,4] <- "Egypt"

###Dubai
DBI1 <- which(grepl("Dubai", User_info$Location))
User_info[DBI1,4] <- "Dubai"

###Uganda
UGD1 <- which(grepl("Uganda", User_info$Location))
User_info[UGD1,4] <- "Uganda"

###Kenya
KY1 <- which(grepl("Kenya", User_info$Location))
User_info[KY1,4] <- "Kenya"

###Morocco
MRC1 <- which(grepl("Morocco", User_info$Location))
User_info[MRC1,4] <- "Morocco"

###South Africa
AFR1 <- which(grepl("South Africa", User_info$Location))
User_info[AFR1,4] <- "South Africa"

###Ukraine
UKR1 <- which(grepl("Ukraine", User_info$Location))
User_info[UKR1,4] <- "Ukraine"

##########################################CREATE NEW Dataframe####################################################################
User_country <- data.frame()
Country_list <- c("USA","Canada","Mexico","Colombia","Brazil","Argentina","Peru",
                  "Europe","France","Switzerland","UK","Ireland","Finland","Norway",
                  "Sweden","Denmark","Germany","Luxembourg","Poland","Greece",
                  "Belgium","Italy","Netherland","Czech Republic","Lithuania","Romania",
                  "Latvia","Estonia","Hungary","Serbia","Spain","Portugal","Turkey","Cyprus",
                  "Bulgaria","Austria","India","Pakistan","Iran","Thailand","Taiwan","China",
                  "Hong Kong","Japan","South Korea","Malaysia","Singapore","Philippines","Vietnam",
                  "Cambodia","Nepal","Kazakhstan","Banglades","Indonesia","Israel",
                  "Australia","New Zealand","Russia","Belarus","Ukraine","Egypt","Dubai",
                  "Uganda","Kenya","Morocco","South Africa")
for (coun in Country_list) {
  addlist <- User_info[which(User_info$Country==coun),]
  User_country <- rbind(User_country,addlist)
}

User_country <- data.frame(Id = User_country$Id,Displyname = User_country$DisplayName,
                           Country = User_country$Country)
### output to sql
dbWriteTable(connect,"User_Country",User_country)
