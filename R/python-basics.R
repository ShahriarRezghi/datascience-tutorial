###############################################################
#####################     Basic Math   ########################
###############################################################


# __________________________  priority _______________________!

1 + 1

5 - 1

3 * 7

4 / 3

4 * 6 + 5

(4 * 6) + 5

4 * (6 + 5)

# __________________________  Variables _______________________!

x <- 2
y = 5
3 -> z

a <- b <- 7

assign ("j", 4)


# ______________________  Removing Variables __________________!

rm (j)


###############################################################
#####################     Data Types   ########################
###############################################################

# ____________________  Numeric Data_________________!

# The four main types of data most likely to be used are 
# * numeric 
# * character (string)
# * Date / POSIXct (time-based)
# * logical ( TRUE / FALSE )




class (x)

is.numeric (x)

i <- 5L

is.integer (i)

is.numeric (i)

class (4L)

class (2.8)

4L * 2.8

class (4L * 2.8)

class (5L)

class (2L)


# __________________ Character Data _________________!
##
## R has two primary ways of handling character data: character and factor
##

x <- "data"

y <- factor ("data")

nchar (x)

nchar (452L)

# __________________ Dates _________________!

date1 <- as.Date ("2012-06-28")

class (date1)

date2 <- as.POSIXct ("2012-06-28 17:42")

class (date2)

as.numeric (date2)

# __________________ Logical _________________!

TRUE * 5

FALSE * 5

k <- TRUE

class (k)

is.logical (k)

class (T)

T <- 7

## Logical s can result from comparing two numbers, or characters.

# does 2 equal 3?
2 == 3
# does 2 not equal three?
2 != 3

2 < 3

2 <= 3

"data" == "stats"

"ab" < "b"


###############################################################
#######################     Vectors   #########################
###############################################################


x <- c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

x * 3

x + 2

sqrt (x)

1:10

5:-7


x <- 1:10
y <- -5:3
x+y


x + c (1, 2)

x <= 5

x > y

x < y




x <- 10:1
y <- -4:5
any (x < y)


all (x < y)


q <- c ("Hockey", "Football", "Baseball", "Curling", "Rugby",
        "Lacrosse", "Basketball", "Tennis", "Cricket", "Soccer")

nchar(q)

x[1]

x[1:2]

x[ c (1, 4)]

c (One="a", Two="y", Last="r")

w <- 1:3


names (w) <- c ("a", "b", "c")


# __________________ Factor Vectors _________________!

q2 <- c (q, "Hockey", "Lacrosse", "Hockey", "Water Polo",
         "Hockey", "Lacrosse")

q2Factor <- as.factor (q2)


as.numeric (q2Factor)


# __________________ Calling Functions _________________!


mean (x)

# Arithmetic Operators

?`+`
?`*`
?`==`


# __________________ Missing Data _________________!


### NA

z <- c (1, 2, NA, 8, 3, NA, 3)

is.na (z)

zChar <- c ("Hockey", NA, "Lacrosse")

mean (z)

mean (z, na.rm=TRUE)

### NULL

z <- c (1, NULL , 3)

d <- NULL

is.null (d)

is.null (7)


# __________________ Pipes _________________!

##
## A new paradigm for calling functions in R is the pipe
##

library (magrittr)

x <- 1:10
x %>% mean

z <- c (1, 2, NA, 8, 3, NA, 3)

sum ( is.na (z))

z %>% is.na %>% sum


###############################################################
################  Advanced Data Structures  ###################
###############################################################


# __________________ data.frames _________________!

x <- 10:1
y <- -4:5
q <- c ("Hockey", "Football", "Baseball", "Curling", "Rugby",
        "Lacrosse", "Basketball", "Tennis", "Cricket", "Soccer")

theDF <- data.frame (x, y, q)
theDF

theDF <- data.frame (First=x, Second=y, Sport=q)


nrow (theDF)
ncol (theDF)
dim (theDF)

names (theDF)
names (theDF)[3]

rownames (theDF)

rownames (theDF) <- c ("One", "Two", "Three", "Four", "Five", "Six",
                       "Seven", "Eight", "Nine", "Ten")

rownames (theDF)

rownames (theDF) <- NULL


head (theDF)

head (theDF, n=7)

tail (theDF)

class (theDF)

theDF$Sport

theDF[3, 2]

theDF[3, 2:3]


theDF[ c (3, 5), 2]

theDF[ c (3, 5), 2:3]

theDF[, 3]

theDF[, 2:3]

theDF[2, ]

theDF[2:4, ]

theDF[, c ("First", "Sport")]