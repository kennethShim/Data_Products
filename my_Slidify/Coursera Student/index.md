---
title       : A Demonstration of the Central Limit Theorem with R-Shiny App
subtitle    : -A User Guide- 
author      : A Coursera Student
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

--- .class #id 

## BACKGROUND
<br><br>
<p style="font-size:120%">Informally speaking, <b><em>the central limit theorem</em></b> tells us that when we collect sample means from a particular population for
a sufficient amount of times, the mean of its distribution 
approaches the true population mean.</p>

<p style="font-size:120%">This is what this app demonstrates for us!</p>

---

## Methods
<h4 style="font-family:courier"><b>Generation of A Random Population Mean</b></h4>
With the start of the app, a random population mean is generated using a R's random number generator with mean value of 500 and standard deviation of 500.

```r
PopMean <- round( rnorm(1, mean=500, sd=500), 2)
PopMean
```

```
## [1] -189.12
```

<h4 style="font-family:courier"><b>Sampling</b></h4>
Sample points with a user-specified sample size <em>'sampleSize'</em> are generated based on the randomly generated population mean with a fixed standard deviation value of 500.  

```r
sampleSize = 10; round(rnorm(sampleSize, mean=PopMean, sd=500), 2)
```

```
##  [1] -611.88   16.88   -7.19  -97.08  240.63  243.34 -658.05  102.71
##  [9] -275.73  172.99
```

---

## Basic Guide on User Interface
<h4 style="font-family:courier"><b>Sliders</b></h4>
<p>Two sliders for user-specified sample size parameter settings.</p>
<ul>
  <li><b>Sample Size</b> - data points per one sample</li>
  <li><b>Num. of Samples</b> - number of samples to collect</li>
</ul>
<p><em>hints</em>: greater the parameter values, faster it approaches the 
population mean</p>

<br>

<h4 style="font-family:courier"><b>Buttons</b></h4>
<ul>
  <li><b>Add Samples</b>: collects new samples from 
  the population and triggers a dynamic change in the
  mean of the distribution of the means.  This change
  is also reflected in the histogram where its mean is
  displayed with a red verticle line.</li>
  
  <li><b>Show True Pop. Mean</b>: displays the 
  the true population mean of the randomly generated
  population.</li>
</ul>

---

## A Sample Result

<p>Here is a near-normal distribution formed as a result of a sufficient sampling. As shown here, the mean of the distribution of the sample means is near its true population mean</p>
<center><img src='img/sampleResult.png' height="480" width="680"></center>



