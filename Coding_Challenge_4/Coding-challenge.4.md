# Coding Challenge 3

## **Q.No.3 (a)**

## **Q.No.6 (b)**

\###Readme file link

[link to my Readme file](Coding%20challenge.4.md)

### Clickable Link to the ManuscDript

[Manuscript
Link](i.%20Noel,%20Z.A.,%20Roze,%20L.V.,%20Breunig,%20M.,%20Trail,%20F.%202022.%20Endophytic%20fungi%20as%20promising%20biocontrol%20agent%20to%20protect%20wheat%20from%20Fusarium%20graminearum%20head%20blight.%20Plant%20Disease.%20https://doi.org/10.1094/PDIS-06-21-1253-RE)

## **Q.No.6 (b)**

\##File Tree of Github

[pdf file](Coding-challenge.4.pdf)

[word file](Coding-challenge.4.docx)

[md file](Coding-challenge.4.md)

[Mycotoxin csv file](MycotoxinData.csv)

### Libraries

``` r
library(readr)
library(ggplot2)
library(tidyverse)
```

    ## ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
    ## ✔ dplyr     1.1.4     ✔ stringr   1.5.1
    ## ✔ forcats   1.0.0     ✔ tibble    3.2.1
    ## ✔ lubridate 1.9.4     ✔ tidyr     1.3.1
    ## ✔ purrr     1.0.2     
    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()
    ## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors

``` r
library(ggpubr)
library(ggrepel) 
cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73",
                "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
```

## **Q.No.3 (b)**

### Importing the excel file

``` r
MycotoxinData <- read.csv("MycotoxinData.csv",na = "na")
```

## **Q.No.3 (c)**

### Creating a ggplot box plot

``` r
plot.1<- ggplot(data = MycotoxinData, aes(x = Treatment, y = DON, fill = Cultivar)) +
  geom_boxplot(color = "black") +  
  geom_point(aes(fill = Cultivar), shape = 21, color = "black", alpha = 0.6, 
             width = 0.9) + 
  scale_fill_manual(values = c(cbbPalette[6], cbbPalette[4])) +  
  xlab("") +
  ylab("DON(ppm)") + 
  theme_classic() + 
  facet_wrap(~Cultivar, scale = "free") 
```

    ## Warning in geom_point(aes(fill = Cultivar), shape = 21, color = "black", :
    ## Ignoring unknown parameters: `width`

``` r
plot.1
```

    ## Warning: Removed 8 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 8 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

![](Coding-challenge.4_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

### Changing the factor levels

``` r
MycotoxinData$Treatment <- factor(MycotoxinData$Treatment,
                                  levels = c("NTC", "Fg", "Fg + 37", "Fg + 40", "Fg + 70"))
```

### a. Using 15ADON as Y variable

``` r
plot.2 <- ggplot(data = MycotoxinData, aes(x = Treatment, y = X15ADON, fill = Cultivar)) +
  geom_boxplot(color = "black") +
  geom_point(aes(fill = Cultivar), shape = 21, color = "black", alpha = 0.6, 
             position = position_jitterdodge(dodge.width = 0.9)) +  
  scale_fill_manual(values = c(cbbPalette[6], cbbPalette[4])) +
  ylab("15ADON") +
  theme_classic() +
  facet_wrap(~Cultivar, scale = "free")
plot.2
```

    ## Warning: Removed 10 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 10 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

![](Coding-challenge.4_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

\### b. using MassperSeed_mg as Y variable

``` r
plot.3<- ggplot(data = MycotoxinData, aes(x = Treatment, y = MassperSeed_mg , fill = Cultivar)) +
                                   geom_boxplot(color = "black") +  
                                   geom_point(aes(fill = Cultivar), shape = 21, color = "black", alpha = 0.6, 
                                              position = position_jitterdodge(dodge.width = 0.9)) +  
                                   scale_fill_manual(values = c(cbbPalette[6], cbbPalette[4])) +  
                                   xlab("") +
                                   ylab("MassperSeed_mg") + 
                                   theme_classic() + 
                                   facet_wrap(~Cultivar, scale = "free")
plot.3
```

    ## Warning: Removed 2 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 2 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

![](Coding-challenge.4_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

### using ggarrange

``` r
plot.4<- ggarrange(plot.1, plot.2, plot.3,
                                                    nrow =3,
                                                    ncol= 1,
                                                    labels = "auto",
                                                    common.legend = T) 
```

    ## Warning: Removed 8 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 8 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 8 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 8 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 10 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 10 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 2 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 2 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

``` r
                                 plot.4
```

![](Coding-challenge.4_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->
