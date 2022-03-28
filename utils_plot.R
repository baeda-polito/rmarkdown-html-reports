library(highcharter)

custom_font <- "Poppins"

custom_theme <- hc_theme(
  colors = c(
    '#058DC7',
    '#50B432',
    '#ED561B',
    '#DDDF00',
    '#24CBE5',
    '#64E572',
    '#FF9655',
    '#FFF263',
    '#6AF9C4'
  ),
  chart = list(backgroundColor = NULL),
  title = list(style = list(fontFamily = custom_font)),
  subtitle = list(style = list(fontFamily = custom_font)),
  caption = list(    align = "center"),
  legend = list(
    itemStyle = list(fontFamily = custom_font,
                     color = "black"),
    itemHoverStyle = list(color = "gray")
  )
)