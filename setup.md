---
layout: page
title: Setup
root: .
---

## Preparations

Data Carpentry's teaching is hands-on, and although these lessons are designed to use an online RStudio server*, servers can go down during workshops, and these materials can easily be followed using R and RStudio installed locally.

\* University of Edinburgh students only, via Notable Rstudio Server service

If you are using your own computer for this lesson, please install a local copy
of both R ([download R](https://www.stats.bris.ac.uk/R/))
and RStudio ([download RStudio desktop](https://rstudio.com/products/rstudio/)).

After the workshop, this enables you to keep analysing data on your local computer.

Learners will to be able to install a number of R packages, create directories, and download
files.

To avoid troubleshooting during the lesson, learners should follow the
instruction below to download and install everything beforehand in case of any problems with the Notable RStudio service.
If they are using their own computers this should be no problem,
but if the computer is managed by their organization's IT department
they might need help from an IT administrator.

### Install R and RStudio Locally

R and RStudio are two separate pieces of software:

* **R** is a programming language that is especially powerful for data
  exploration, visualization, and statistical analysis
* **RStudio** is an integrated development environment (IDE) that makes using
  R easier. In this course we use RStudio to interact with R.

If you don't already have R and RStudio installed, follow the instructions for
your operating system below. You have to install R before you install RStudio.

#### Windows

* Download R from the
  [CRAN website](https://cran.r-project.org/bin/windows/base/release.htm).
* Run the `.exe` file that was just downloaded
* Go to the [RStudio download page](https://www.rstudio.com/products/rstudio/download/#download)
* Under *Installers* select **RStudio x.yy.zzz - Windows
  Vista/7/8/10** (where x, y, and z represent version numbers)
* Double click the file to install it
* Once it's installed, open RStudio to make sure it works and you don't get any
  error messages.

##### MacOS

* Download R from
  the [CRAN website](https://cran.r-project.org/bin/macosx/).
* Select the `.pkg` file for the latest R version
* Double click on the downloaded file to install R
* It is also a good idea to install [XQuartz](https://www.xquartz.org/) (needed
  by some packages)
* Go to the [RStudio download page](https://www.rstudio.com/products/rstudio/download/#download)
* Under *Installers* select **RStudio x.yy.zzz - Mac OS X 10.6+ (64-bit)**
  (where x, y, and z represent version numbers)
* Double click the file to install RStudio
* Once it's installed, open RStudio to make sure it works and you don't get any
  error messages.

##### Linux

* Follow the instructions for your distribution
  from [CRAN](https://cloud.r-project.org/bin/linux), they provide information
  to get the most recent version of R for common distributions. For most
  distributions, you could use your package manager (e.g., for Debian/Ubuntu run
  `sudo apt-get install r-base`, and for Fedora `sudo yum install R`), but we
  don't recommend this approach as the versions provided by this are
  usually out of date. In any case, make sure you have at least R 3.3.1.
* Go to the
  [RStudio download page](https://www.rstudio.com/products/rstudio/download/#download)
* Under *Installers* select the version that matches your distribution, and
  install it with your preferred method (e.g., with Debian/Ubuntu `sudo dpkg -i
  rstudio-x.yy.zzz-amd64.deb` at the terminal).
* Once it's installed, open RStudio to make sure it works and you don't get any
  error messages.

### Update R and RStudio

If you already have R and RStudio installed, check if your R and RStudio are
up to date:

* When you open RStudio your R version will be printed in the console on
  the bottom left. Alternatively, you can type `sessionInfo()` into the console.
  If your R version is 4.0.0 or later, you don't need to update R for this
  lesson. If your version of R is older than that, download and install the
  latest version of R from the R project website
  [for Windows](https://cran.r-project.org/bin/windows/base/),
  [for MacOS](https://cran.r-project.org/bin/macosx/),
  or [for Linux](https://cran.r-project.org/bin/linux/)
* To update RStudio to the latest version, open RStudio and click on
  `Help" > Check for updates`. If a new version is available, quit RStudio,
  follow the instruction on screen.

Note: It is not necessary to remove old versions of R from your system,
but if you wish to do so you can
[check here.](https://cran.r-project.org/bin/windows/base/rw-FAQ.html#How-do-I-UNinstall-R_003f)


### Install required R packages

During the course we will need a number of R packages. Packages contain useful
R code written by other people. We will use the packages
`tidyverse`, `readr`, `dplyr`, and `ggplot2`.

To try to install these packages, open RStudio and copy and paste the following
command into the console window (look for a blinking cursor on the bottom left),
then press the <kbd>Enter</kbd> (Windows and Linux) or <kbd>Return</kbd> (MacOS)
to execute the command.

```{r eval=FALSE}
install.packages(c("tidyverse", "readr", "dplyr", "ggplot2"))
```

Alternatively, you can install the packages using RStudio's graphical user
interface by going to `Tools > Install Packages` and typing the names of the
packages separated by a comma.

R tries to download and install the packages on your machine.
When the installation has finished, you can try to load the
packages by pasting the following code into the console:

```{r eval=FALSE}
library(tidyverse)
library(readr)
library(dplyr)
library(ggplot2)
```

If you do not see an error like `there is no package called ‘...’` you are good
to go!


### Download the data

We will download the data directly from R during the lessons. However, if you
are expecting problems with the network, it may be better to download the data
beforehand and store it on your machine.  

Please download the .csv `variants` file from [here](https://ndownloader.figshare.com/files/14632895)
