## ---- include=FALSE----------------------------------------------------------------------------------------------
source("../bin/chunk-options.R")
knitr_fig_path("05-")




## ----load-ggplot2, message=FALSE, purl = TRUE--------------------------------------------------------------------
library(ggplot2)


## ----print-iris, message=FALSE, purl = TRUE----------------------------------------------------------------------
head(iris)


## ----scatter-plot-iris, message=FALSE, purl = TRUE, fig.height=3, fig.width=4.5----------------------------------
ggplot(data = iris, aes(x = Petal.Width, y = Petal.Length, colour = Species)) +
  geom_point()


## ----scatter-plot-iris-ugly, message=FALSE, purl = TRUE, fig.height=3, fig.width=4.5-----------------------------
ggplot(data = iris, aes(x = Species, y = Petal.Length, colour = Petal.Width)) +
  geom_point()


## ---- eval=FALSE-------------------------------------------------------------------------------------------------
## ggplot(data = <DATA>, mapping = aes(<MAPPINGS>)) +  <GEOM_FUNCTION>()


## ---- eval=FALSE, purl = TRUE------------------------------------------------------------------------------------
## ggplot(data = variants)


## ---- eval=FALSE, purl = TRUE------------------------------------------------------------------------------------
## ggplot(data = variants, aes(x = POS, y = DP))


## ----first-ggplot, purl = TRUE-----------------------------------------------------------------------------------
ggplot(data = variants, aes(x = POS, y = DP)) +
  geom_point()


## ---- first-ggplot-with-plus, eval=FALSE, purl = TRUE------------------------------------------------------------
## # Assign plot to a variable
## coverage_plot <- ggplot(data = variants, aes(x = POS, y = DP))
## 
## # Draw the plot
## coverage_plot +
##     geom_point()


## ---- ggplot-with-plus-position, eval=FALSE, purl = TRUE---------------------------------------------------------
## # This is the correct syntax for adding layers
## coverage_plot +
##   geom_point()
## 
## # This will not add the new layer and will return an error message
## coverage_plot
##   + geom_point()


## ----create-ggplot-object, purl = TRUE---------------------------------------------------------------------------
ggplot(data = variants, aes(x = POS, y = DP)) +
  geom_point()


## ----adding-transparency, purl = TRUE----------------------------------------------------------------------------
ggplot(data = variants, aes(x = POS, y = DP)) +
    geom_point(alpha = 0.5)


## ----adding-colors, purl = TRUE----------------------------------------------------------------------------------

ggplot(data = variants, aes(x = POS, y = DP)) +
  geom_point(alpha = 0.5, color = "blue")


## ----color-by-sample-1, purl = TRUE------------------------------------------------------------------------------
ggplot(data = variants, aes(x = POS, y = DP, color = sample_id)) +
  geom_point(alpha = 0.5)


## ---- echo=TRUE--------------------------------------------------------------------------------------------------
ggplot(data = variants, aes(x = POS, y = DP, color = "sample_id")) +
 geom_point(alpha = 0.5)


## ----color-by-sample-2, purl = TRUE------------------------------------------------------------------------------
ggplot(data = variants, aes(x = POS, y = DP, color = sample_id)) +
  geom_col(alpha = 0.5)


## ----add-axis-labels, purl = TRUE--------------------------------------------------------------------------------
ggplot(data = variants, aes(x = POS, y = DP, color = sample_id)) +
  geom_jitter(alpha = 0.5) +
  labs(x = "Base Pair Position",
       y = "Read Depth (DP)")


## ----y-log10-scale, purl = TRUE----------------------------------------------------------------------------------
ggplot(data = variants, aes(x = POS, y = DP, color = sample_id)) +
  geom_jitter(alpha = 0.5) +
  labs(x = "Base Pair Position",
       y = "Read Depth (DP)") +
  scale_y_log10()


## ----scatter-challenge, purl = TRUE------------------------------------------------------------------------------
 ggplot(data = variants, aes(x = POS, y = MQ, color = sample_id)) +
  geom_point() +
  labs(x = "Base Pair Position",
       y = "Mapping Quality (MQ)")


## ----first-facet, purl = TRUE------------------------------------------------------------------------------------
ggplot(data = variants, aes(x = POS, y = DP, color = sample_id)) +
 geom_point() +
 labs(x = "Base Pair Position",
      y = "Read Depth (DP)") +
 facet_grid(. ~ sample_id)


## ----second-facet, purl = TRUE-----------------------------------------------------------------------------------
ggplot(data = variants, aes(x = POS, y = DP, color = sample_id)) +
 geom_point() +
 labs(x = "Base Pair Position",
      y = "Read Depth (DP)") +
 facet_grid(sample_id ~ .)


## ----facet-plot-white-bg, purl = TRUE----------------------------------------------------------------------------
ggplot(data = variants, aes(x = POS, y = MQ, color = sample_id)) +
  geom_point() +
  labs(x = "Base Pair Position",
       y = "Mapping Quality (MQ)") +
  facet_grid(sample_id ~ .) +
  theme_bw()


## ----facet-plot-white-bg-no-grid, purl = TRUE--------------------------------------------------------------------
ggplot(data = variants, aes(x = POS, y = MQ, color = sample_id)) +
  geom_point() +
  labs(x = "Base Pair Position",
       y = "Mapping Quality (MQ)") +
  facet_grid(sample_id ~ .) +
  theme_bw() +
  theme(panel.grid = element_blank())


## ----scatter-challenge-2, purl = TRUE----------------------------------------------------------------------------
 ggplot(data = variants, aes(x = POS, y = QUAL, color = sample_id)) +
  geom_point() +
  labs(x = "Base Pair Position",
       y = "PHRED-sacled Quality (QUAL)") +
  facet_grid(sample_id ~ .)


## ----barplot, purl = TRUE----------------------------------------------------------------------------------------
ggplot(data = variants, aes(x = INDEL)) +
  geom_bar() +
  facet_grid(sample_id ~ .)


## ----barplot-challenge, purl = TRUE------------------------------------------------------------------------------
ggplot(data = variants, aes(x = INDEL, color = sample_id)) +
   geom_bar(show.legend = F) +
   facet_grid(sample_id ~ .)

