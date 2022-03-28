library(highcharter)

my_own_theme <- hc_theme(
  colors = c("red", "green", "blue"),
  chart = list(
    backgroundColor = NULL,
    divBackgroundImage = "http://media3.giphy.com/media/FzxkWdiYp5YFW/giphy.gif"
  ),
  title = list(
    style = list(
      color = "#333333",
      fontFamily = "Lato"
    )
  ),
  subtitle = list(
    style = list(
      color = "#666666",
      fontFamily = "Shadows Into Light"
    )
  ),
  legend = list(
    itemStyle = list(
      fontFamily = "Tangerine",
      color = "black"
    ),
    itemHoverStyle = list(
      color = "gray"
    )
  )
)