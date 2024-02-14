##### Name: Sebastian Kowalczyk 

## Task 1: Load the Dataset into R (Code)


setwd("~/Desktop/New Folder With Items")
energydata <- read.csv("energydata_381.csv", header = TRUE, sep = ",")
TOTAL.KWH <- energydata$TOTAL.KWH
THERMS.SQFT.MEAN.2010 <- energydata$THERMS.SQFT.MEAN.2010




## Task 2: Summary Statistics for TOTAL.KWH
	# Summary Stats Code and Results
summary(TOTAL.KWH)

Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
2990   51610   90869   90256  124621  199669 
	
	
	# Variance Code and Results
var(TOTAL.KWH)
2102832505
	
	# Standard Deviation Code and Results
sd(TOTAL.KWH)

45856.65
	
	# Number of values for this variable Code and Results

	length(TOTAL.KWH)
	3833


	
## Task 3: Summary Statistics for THERMS.SQFT.MEAN.2010
	# Summary Stats Code and Results

  summary(THERMS.SQFT.MEAN.2010)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
904.2  1110.2  1174.5  1174.1  1237.1  1448.8 
	
	# Variance Code and Results
var(THERMS.SQFT.MEAN.2010)
8781.347
	
	
	# Standard Deviation Code and Results
sd(THERMS.SQFT.MEAN.2010)
93.70884
	
	# Number of values for this variable Code and Results

	length(THERMS.SQFT.MEAN.2010)
	
	
	3833


	
## Task 4: Histogram for TOTAL.KWH
	## Remember to save your plot and also submit it to Gradescope.

	# Code:
	breakpts<-seq(0,225000,25000)
	hist(TOTAL.KWH,breaks = breakpts, right = FALSE, ylim = c(0,800))

	# Describe histogram: symmetry?
The histogram for total.kwh lacks symmetry because it is multimodal and right skewed
in wich most of the data lies to the left of the histogra,

	# Describe histogram: unimodal or bimodal or multimodal?
Multimodal with multiple heads "maxes or heads"


	
	
	

	
## Task 5: Boxplot for TOTAL.KWH
	## Remember to save your plot and also submit it to Gradescope.

	# Code:

	boxplot(TOTAL.KWH,horizontal = TRUE, ylim = c(0, 210000), main = "Boxplot of TOTAL.KWH")

	# Are there outliers present?

		
	  There appear to be no data points/circles outside of the upper and lower limits 
	  therefore we can conclude there are no outliers
	   


## Task 6: Shapiro-Wilk Test for TOTAL.KWH
	# Code:

		shapiro.test(TOTAL.KWH)

	# Copy and paste results here

		Shapiro-Wilk normality test
		
		data:  TOTAL.KWH
		W = 0.97627, p-value < 2.2e-16

	# Do you think that your population is normally distributed?

	# Reason: 
		Since the p value is around  .002, which is clearly less then .05, we 
		can conclude that population is not normally distributed

		
		
	# Does your decision here match what you are seeing with your histogram from Task 4? Why or why not?

		Yes, the historgram for total KWH is clearly not normally distributed or symmtric at all
		
		
		
		

		
## Task 7: Histogram for THERMS.SQFT.MEAN.2010
	## Remember to save your plot and also submit it to Gradescope.

	# Code:

		hist(THERMS.SQFT.MEAN.2010,breaks = c(900,950,1000,1050,1100,1150,1200,1250,1300,1350,1400,1450,1500), right = FALSE, ylim = c(0,850))

	# Describe histogram: symmetry?

The historgram appears to be symmetric, with the ever so slightest right skew,
however, in general very symmetric and bell like

	# Describe histogram: unimodal or bimodal or multimodal?
		
		The histogram appears to be unimodal with one main
		"bump" or max and it ipositioned at the center of 
		the histogram
		
		
		



## Task 8: Boxplot for THERMS.SQFT.MEAN.2010
	## Remember to save your plot and also submit it to Gradescope.

	# Code:
		
		boxplot(THERMS.SQFT.MEAN.2010,horizontal = TRUE, ylim = c(900, 1500), main = "Boxplot of Average Therms Per Sqft")
	

	# Are there outliers present?
		
		Yes there are outliers present, as seen on the box plot we have circles
		that pass the upper and lower limits which are outlier data. 
		


		
## Task 9: Shapiro-Wilk Test for THERMS.SQFT.MEAN.2010
	# Code:  
		
		
		shapiro.test(THERMS.SQFT.MEAN.2010)


	# Copy and paste results here

		Shapiro-Wilk normality test
		
		data:  THERMS.SQFT.MEAN.2010
		W = 0.99914, p-value = 0.056

	# Do you think that your population is normally distributed?

	# Reason:
Yes the population does appear to be normally distributed because the p value
for THERMS is .056 which is greater then the .05 we compare to.
		
		
	# Does your decision here match what you are seeing with your histogram from Task 7? Why or why not?

		Yes it does because the histogram for THERMS is both symmetric and unimodal
		as well as being rather bell shaped.
		
		
		
		

		
## Task 10: Compare average Means for for different Building Subtypes. Create a confidence interval, assuming equal variances. (See PDF for CI to create.)

	# Split Dataset:
Comm <- datasetname$KWH.MEAN.2010[datasetname$BUILDING_SUBTYPE == "Commercial"]
SFH <- datasetname$KWH.MEAN.2010[datasetname$BUILDING_SUBTYPE == "Single Family"]


	# Code:
t.test(Comm - SFH, alternative = "two.sided", conf.level = .982, var.equal = TRUE)

	# Copy and paste results here
data:  Comm - SFH
t = 18.91, df = 3701, p-value < 2.2e-16
alternative hypothesis: true mean is not equal to 0
98.2 percent confidence interval:
  2113.164 2717.764
sample estimates:
  mean of x 
2415.464 

	# State the parameter the confidence interval is for.
The parameter is the difference in population means u(mean)commercial-u(mean)single

		
	# Write down the confidence interval.

2113.164 < ud < 2717.764
ud = 2415.464 = (difference of means)
	# Write an interpretation of your confidence interval.

We are 98.2% confident that the interval of [2113.164, 2717.764], contains the 
true difference in mean in average KWH for commerical and single family homes in the
year of 2010

	# We are interested in whether there is evidence that there is specific value difference between the building subtypes. (See PDF for more specifics.)
		# Is there evidence this is true?
No 

		# Reason why or why not.
The value of 2000 does not like inside of the confidence interval of [2113.164, 2717.764],
it is just short.
		
		
		
		
		
		
		
## Task 11: Create a confidence interval for the proportion of buildings of a certain age.

	# Code to observe how many values exist per age group.
addmargins(table(energydata$Age_Group))

Ancient Middle1 Middle2 Middle3   Newer     Sum 
429     283    1592    1470      59    3833 

	# Check the success / failure condition.
		# Code:
n = 3833
p = newer/n = 59/3833
p = .01539264
number of expected successes = np >= 5
number of expected failures  = n(1-p) >= 5 
		
		# Expected Number of Successes    np = 58.99999 >=5 yes
		# Expected Number of Failures  n(1-p) = 3774 >= 5 yes
		# Can we use the Normal Distribution to approximate this confidence interval?
  Yes we can 

	# Code for Confidence Interval:

prop.test(x = 59, n = 3833, alternative = "two.sided", conf.level = .973, correct = FALSE)

	# Copy and paste results here
1-sample proportions test without continuity correction

data:  59 out of 3833, null probability 0.5
X-squared = 3600.6, df = 1, p-value < 2.2e-16
alternative hypothesis: true p is not equal to 0.5
97.3 percent confidence interval:
  0.01157229 0.02044811
sample estimates:
  p 
0.01539264 

	
	# State the parameter the confidence interval is for.

Proportion of building that are less than 25 years old
	
	# Write down the confidence interval.
.01157229 < p < .02044811
where the sample estimate of p = 0.01539264 
	# Write an interpretation of your confidence interval.
We are 97.3% confident that the proption of buildings that are less than 25
years old lies between .01157229 and .02044811







## Task 12: Create a confidence interval for the variance of THERMS.SQFT.MEAN.2010. (See PDF for CI to create.)

	# Code:
install.packages("DescTools") //install in order to use var.test
library(DescTools) // access
VarCI(THERMS.SQFT.MEAN.2010, method = "classic", conf.level = .926, sides = "two.sided")
	# Copy and paste results here

var   lwr.ci   upr.ci 
8781.347 8433.909 9151.360 
	
	# State the parameter the confidence interval is for.

variance of THERMS.SQFT.MEAN.2010
	
	# Write down the confidence interval.

8433.909 < o^2 < 9151.360

	# Write an interpretation of your confidence interval.

We are 92.6% confident that the variance of THERMS.SQFT.MEAN.2010 lies between 
8433.909 and 9151.360

	# What assumption did we need to make to construct this confidence interval?

We have to assume that our population is normally distributed

	# Do you think that this assumption was met? You should reference an earlier Task from this project to answer this question.

Yes out assumption was met, because when we created the histogram 
for THERMS.SQFT.MEAN.2010, it was both symmmtric and bell shaped 
about the mean
	
	
	
	

	
## Task 13: Hypothesis Test for TOTAL.KWH
	# What conditions must you satisfy to perform this test? Do you think they are met?  Why or why not?

We must meet the conditions of the CLT, which are 1) the population must be
normally distributed and 2) if the population is not normally distributed
than then n has to be greater than 30.

Although TOTAL.KWH is not normally distributed as shown in the histogram that
is not symmetric, the size of TOTAL.KWH is 3833, therefore this condition is met
and the population can be considered "good".



	# State the hypotheses:
		#H0: u =u0 or u = 89100
		#H1: u > 89100
	
	
	# Code:   
signficance level = 6.2 percent
1-.062 = .938
	
t.test(TOTAL.KWH, mu = 89100, alternative = "greater", conf.level = .938, var.equal = TRUE)
	# Copy and paste results here

One Sample t-test

data:  TOTAL.KWH
t = 1.5603, df = 3832, p-value = 0.05939
alternative hypothesis: true mean is greater than 89100
93.8 percent confidence interval:
  89116.12      Inf
sample estimates:
  mean of x 
90255.69 

	
	# State the Test Statistic Value:
	-1.5603

	# State the P-Value:
.05939
	
	# Decision from P-Value (see PDF for significance level):
.05939 < .062 
Reject the H0
	# Conclusion from P-Value:
There is sufficient evidence that the population mean of
TOTAL.KWH is greater than 89100.
	
	# State the critical value. Provide your code and results.
df <- 3832
qt(.062, df)

crit value = -1.538537		
	# State the critical region.
Reject H0 if t < -1.538537

-1.5603 < -1.538537 so reject H0

	# Would you make the same decision based on the critical region that you did with your p-value? Why or why not?

Yes because the test statistic is smaller than the critical value, 
so both the p value and the critial region have the same out come of 
rejecting H0




\
