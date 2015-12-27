library(shiny)

PopMean <<- round( rnorm(1, mean=500, sd=500), 2)
listOfMeans <<- NA

getSampleMeans <<- function(sampleSize, numOfSamples) {
  sampled_means <- mean(round(rnorm(sampleSize, mean=PopMean, sd=500), 2))
  if (numOfSamples > 1){
    for(i in 1:numOfSamples){
      samplePoint <- round(rnorm(sampleSize, mean=PopMean, sd=500), 2)
      sampled_means <- c(sampled_means, mean(samplePoint))
    }
  }
  return(sampled_means)
}


shinyServer(function(input, output) {
  
  #Display True Population Mean
  output$trueMean <- renderText({
    if(input$showMu) {
      isolate(paste("  ",PopMean))
    }else{
      "  ???"      
    }

  })

  
  #Display True Population Mean
  output$summary <- renderText({
    if(input$addSample) {
      newMeans <- getSampleMeans(as.numeric(input$sampleSize), as.numeric(input$numOfSamples))
      listOfMeans <<- c(listOfMeans, newMeans)
      isolate(paste("  ",summary(listOfMeans)))
    }else{
      "  ???"      
    }
    
  })
  
  #Data Summary
  output$ss <- renderText({
    if(input$addSample){
     isolate(paste("  ", mean(listOfMeans, na.rm=T)))
    }
    else{
      "  ???"
    }
  })
  

  
  #Histogram
  output$Hist <- renderPlot({
    if(input$addSample){
      h<-hist(listOfMeans)
      mu <- mean(listOfMeans, na.rm=T)
      
      hist(listOfMeans, xlab='sample means', col='lightblue', main=NULL)
      lines(c(mu, mu), c(0, max(h$counts)), col="red", lwd=5)
    
    }
  })

})