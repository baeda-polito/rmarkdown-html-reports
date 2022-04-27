![alt text](img/hero.png)

# Rmarkdown template for smart reporting
Rmarkdown template of smartreporting


The repository is structured as follows

```bash
```

## How to use this template
This template repository was conceived as a basic template to structure more complicatd data analytics reports. Just click on the github button `Use as template` to clone the repository to your own Github Account and start wirking on it.

### :hammer: Set up the css global variables

The default css file is called `clear.css` and is located in `css` folder. The standard css file was built with the idea of only modifying some global variables in order to give a personal touch to the report without heavily modifying the css. The global variables are defined at the beginning of the css file:

```css
:root {
    --red: #ff000f;
    --section-background: #F4FAFFFF;
    --tobe-blue: #04005E;
    --tobe-pink: #ff2079;
    --baeda-blue: #2E4F97;
    --baeda-orange: #F47806;
    --baeda-light-blue: #D9EBF6;
    --toc-image: url("../img/baeda-abb.jpg");
}
```
The first variables are related to the colours of the css while `--toc-image` to the image that is displayed upon the table of content. We suggest to use a rectangular image/logo in order to fit in a proportioned way.

### :bar_chart: Set up the analysis
The `main.Rmd` is the RMarkdown file in which the analysis are contained. The `yaml` of the RMarkdown file contains all the useful options for the report generation. 

```yaml
title: "Report Template"
author: "Author"
date : "`r Sys.Date()`"
output:
  html_document:
    # template: "template-basic/template.html"
    css: "css/clear.css"
    toc: true
    toc_float: true
    number_sections: true
    self_contained: true
    includes:
      after_body: 'html/footer.html'
```

By default the RMarkdown retreives the default `css` file and `html` footer and generates an `html_document`. The document accepts even a custom html template, but we suggest not to use it to avoud compilation issues. For futher details related to the parameters visit the official Rmarkdown [website](https://rmarkdown.rstudio.com/) and related [material](https://bookdown.org/yihui/rmarkdown/).

To setup the analisys we suggest to organize the R script (if any) in the `R` folder and dataframes in the `data` folder. By default the `highcharter` pachage is loaded in order to provide interactive graphical output.

### :clapper: Compile
The report can be compiled in two ways

1. From the `main.Rmd`: This first option is the most straightforward since the RStudio IDE just press the `knit` button. 
2. From the `knit_browser.R` file: this option is more complicated since it compiles the document though `rmarkdown::render()` function that permits to set more options, for example the destination folder of the generated report or the visualization in the default browser window.
