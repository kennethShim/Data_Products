---
title: "Description and Guide for the App"
author: "A Coursera Student"
date: "December 26, 2015"
output: html_document
---
<h4>BACKGROUND</h4>
<p>The app aims to demonstrate the central limit theorem.
A random population is initially generated. As a user 
draws random samples from the population and compute 
the mean of the distribution of the sample means, the 
true population mean is approached.</p>
<br>

<h4>USER GUIDE</h4>
The app allow users to set parameter settings for 
sample size from two different aspects.
<em>Sample Size</em> - data points per one sample
<em>Num. of Samples</em> - number of samples to collect
<p>hints: greater the parameter values, faster it approaches the 
population mean</p>

<b>Add Samples</b> button collects new samples from 
the population and triggers a dynamic change in the
mean of the distribution of the means.  This change
is also reflected in the histogram where its mean is
displayed with a red verticle line.

<b>Show True Pop. Mean</b> button displays the 
the true population mean of the randomly generated
population.

<em>Distribution of Sample Means</em> displays the 
summary of the current distribution of the sample means.
The displayed values represent Minimum, 1st Quarter, 
Median, Mean, 3rd Quarter, and Max values.
