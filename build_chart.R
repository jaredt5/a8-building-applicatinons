library(plotly)

build_chart <- function(df, x, y, obs, checkGroup) {
  
  # simplifies data
  d <- df[sample(nrow(df), obs), ]
  
  # Creates plot
  plot <- plot_ly(data = d, x = eval(parse(text = x)), y = eval(parse(text = y)), 
                  mode = "markers", color = Species) %>%
    
    # Modifies layout
    layout(title = "Iris Petal and Sepal Data",
           xaxis = list(title = as.character(x)), 
           yaxis = list(title = as.character(y)))
  return(plot)
}
