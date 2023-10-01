server <- function(input, output, session) {
  #autoInvalidate <- reactiveTimer(5000, session)
  
  output$visualization2 <- renderPlot({
    birds %>%
      #filter(altitude %in% (0:2500)) %>% 
      filter(true_ymd %in% c(input$DatesMerge2)) %>%
      ggplot(
        aes(x=speed_2d, y=altitude)) + 
      geom_point(size=0.3, color="darkgreen") + 
      labs(y="Altitude (ft)",x="Speed (mph)",title="Bird altitude compared to speed",caption="Alec Chen and Vanessa Leon | Data from Sri Sai Krishna N") + 
      ylim(0, 2600)+
      facet_wrap(~bird_name) + 
      theme(panel.background = element_rect(fill='beige',color='beige'), 
            plot.background = element_rect(fill = 'beige', color ='beige'))+
      theme(
        strip.background = element_rect(
          color="black", fill="#FC4E07", size=1.5, linetype="solid"
        )
        
      )
  })
  
  output$euro_robin <- renderImage({
    return(list(
      src = "euro_robin.jpeg",
      contentType = "image/jpeg",
      width = "auto",
      height = 350,
      alt = "Face"
    ))
  },
  deleteFile = FALSE)
  
  
  
  output$white_stork_med <- renderImage({
    return(list(
      src = "white_stork_med.jpeg",
      contentType = "image/jpeg",
      width = 280,
      height = 350,
      alt = "Face"
    ))
  },
  deleteFile = FALSE)
  
  
  output$enram <- renderImage({
    return(list(src = "good.gif",
                contentType = 'image/gif')
    )},deleteFile=FALSE)
  
  output$storks <- renderImage({
    return(list(src = "storks.gif",
                contentType = 'image/gif')
    )},deleteFile=FALSE)
  
}