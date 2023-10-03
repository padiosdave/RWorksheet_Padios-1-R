# a. Sequence from -5 to 5. Write the R code and its output.
# Describe its output.

negative5to5< -seq(-5,5)
negative5to5

# It generates numbers from -5 to 5


#b. x <- 1:7. What will be the value of x?

x <- 1:7
x

# The value of x will are 1 2 3 4 5 6 7

#Create a vector using seq() function
# a. seq(1, 3, by=0.2) # specify step size

VectSeq <-seq(1,3,by=0.2)
VectSeq
# Write the R script and its output. Describe the output.
Factoryworkers <- c (34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
                     22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
                     24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
                     18.)
Factworkers

Factworkers[(3)]
Factworkers [c(2,4)]


#3 a. Access 3rd element, what is the value?
# 22

# b. Access 2nd and 4th element, what are the values?
# 28 and 36

# c. Access all but the 4th and 12th element is not included. Write the R script and its output.
Factworkers [c(1:3,5:11,13:50)]
# Output 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18


#4 *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).



#a. Print the results. Then access x[c("first", "third")].
#Describe the output.
x
x [c("first", "third")]

#The output shows that results just printed the word first and third

#b.
x <- c(first=3, second=0, third=9)
x


#5 Create a sequence x from -3:2.
x<-seq(-3,2)
x
#a. Modify 2nd element and change it to 0;
x[2] <- 0
x
#Describe the output.

#b.Write the code and its output.
x<-seq(-3,2)
x
x[2] <- 0
x

#6 *The following data shows the diesel fuel purchased by Mr. Cruz.
# Month Jan Feb March Apr May June
# Price per liter (PhP) 52.50 57.25 60.00 65.00 74.25 54.00
# Purchase–quantity(Liters) 25 30 40 50 10 45


#a.Create a data frame for month, price per liter (php)and purchase-quantity (liter). Write the R scripts and its output.

Purch <-data.frame(
  
  Month = c("Jan", "Feb", "March", "Apr", "May", "June"),
  Priceperliter = c(52.50,57.25,60.00,65.00,74.25,54.00),
  Purchasequantity  = c(25,30,40,50,10,45)
)
Purch
View(Purch)
#b.What is the average fuel expenditure of Mr. Cruz from
#Jan to June? Note: Use ‘weighted.mean(liter, purchase)‘.
# Write the R scripts and its output.
average_expend <-weighted.mean(Purchases$Priceperliter , Purchases$Purchasequantity)
average_expend

#Output 59.2625

#7.a

data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))

data

#output 141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000   3710.0000

celebrities <- c("Tom Cruise","Rolling Stones","Oprah Winfrey","U2","Tiger Woods","Steven Spielberg","Howard Stern","50 Cent","Cast of the Sopranos","Dan Brown","Bruce Springsteen","Donald Trump","Muhammad Ali","Paul McCartney","George Lucas","Elton John","David Letterman","Phil Mickelson","J.K Rowling","Bradd Pitt","Peter Jackson","Dr. Phil McGraw","Jay Lenon","Celine Dion","Kobe Bryant")

powerrankings <- c(1, 2, 3, 4, 5, 6, 7 ,8 , 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)

payamounts <- c(67, 90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31 )




celebdata <- data.frame(Celebrity = celebrities, Power_Ranking = powerrankings, Pay_Amount = payamounts)

View(celebdata)

#8.b
celebdata$Power_Ranking[celebdata$Celebrity == "J.K Rowling"] <- 15
celebdata$Pay_Amount[celebdata$Celebrity == "J.K Rowling"] <- 90
celebdata


View(celebdata)


#8.c
write.csv(celebdata, "/cloud/project/PowerRanking.csv")
PowerRanking <- read.csv("PowerRanking.csv")
PowerRanking


#8.d
selected_rows <- celeb_data[10:20, ]
save(selected_rows, file = "Ranks.RData")
selected_rows

#8.e This script selects rows 10 to 20 from the original data frame, saves the selected rows as Ranks.RData, and then prints the selected rows as the output.


#9.a
if (!requireNamespace("readxl", quietly = TRUE)) {
  install.packages("readxl")
}
library(readxl)
file_url <- "https://tinyurl.com/Hotels-Vienna"
file_path <- "Hotels-Vienna.xlsx"
download.file(file_url, destfile = file_path, mode = "wb")
hotel_data <- read_excel(file_path)
str(hotel_data)


#9.b
datasetdimensions <- dim(hoteldata)
data

#9.c
selected_columns <- hoteldata[, c("country", "neighbourhood", "price", "stars", "accomodation_type", "ratings")]
selected_columns


#9.d
new_rdata_file <- "new.RData"
save(selected_columns, file = new_rdata_file)
cat("Selected columns saved as", new_rdata_file, "\n")


#9.e
load("new.RData")

("First six rows:")
(head(selected_columns))


("Last six rows:")
(tail(selected_columns))

#10.a
vegetables <- c("Carrot", "Monggo", "Alugbati", "Tomato", "Cucumber",
                "Mushroom", "Potato", "Onion", "Pechay", "Eggplant")

vegetables
#Output "Carrot"   "Monggo"   "Alugbati"  "Tomato"   "Cucumber" "Mushroom" "Potato"   "Onion"    "Pechay"  "Eggplant"

#10.b
vegetables <- c(vegetables, "Corn", "Garlic")
vegetables

#Ouput "Carrot"   "Monggo"   "Alugbati"  "Tomato"   "Cucumber" "Mushroom" "Potato"   "Onion"    "Pechay"  "Eggplant" "Corn"     "Garlic"
#Added vegetables

#10.c
vegetables <- c(vegetables[1:5], "Radish", "Ginger", "Green pees", "Spring onions", vegetables[6:length(vegetables)])
vegetables

#Output"Carrot" "Monggo" "Alugbati" "Tomato" "Cucumber" "Radish" "Ginger" "Green pees""Spring onions" "Mushroom" "Potato" "Onion" "Pechay" "Eggplant" "Corn" "Garlic"
#It added vegetables in between 5 and 6

x#10.d
indices_to_remove <- c(5, 10, 15)
vegetables <- vegetables[-indices_to_remove]
vegetables
#Output "Carrot" "Monggo" "Alugbati" "Tomato"  "Radish" "Ginger" "Green pees" "Spring onions" "Potato" "Onion" "Pechay" "Eggplant" "Garlic"
#It remove the vegetables that is in slot number 5,10,15
