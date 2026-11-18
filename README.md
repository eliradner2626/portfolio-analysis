# Portfolio Analysis

This repository brings together seven projects from UCLA’s Statistics C183 course on portfolio analysis. I used monthly price data for 30 stocks and the S&P 500 to study returns, diversification, and portfolio risk. The projects move from mean-variance optimization and efficient frontiers to single-index, constant-correlation, and multigroup models. I also compared beta forecasts using Blume and Vasicek adjustments and tested the portfolios on a later period using growth rates, performance measures, and Fama’s decomposition. Each project includes the R Markdown source and its knitted PDF, with the input datasets kept in one place.

## Projects

| Project | Focus | Files |
| --- | --- | --- |
| 1. Risk and return | Stock returns, covariance, diversification, and minimum-risk portfolios | [Rmd](projects/01-risk-and-return/project-01.Rmd) · [PDF](projects/01-risk-and-return/project-01.pdf) |
| 2. Efficient frontiers | Mean-variance optimization, target returns, and the two-fund theorem | [Rmd](projects/02-efficient-frontiers/project-02.Rmd) · [PDF](projects/02-efficient-frontiers/project-02.pdf) |
| 3. Portfolio theory | Two- and three-stock portfolios, tangency, and the capital allocation line | [Rmd](projects/03-portfolio-theory/project-03.Rmd) · [PDF](projects/03-portfolio-theory/project-03.pdf) |
| 4. Single-index model | Regression estimates, model covariance, and frontier comparisons | [Rmd](projects/04-single-index-model/project-04.Rmd) · [PDF](projects/04-single-index-model/project-04.pdf) |
| 5. Beta adjustments | Tangency weights, Blume and Vasicek forecasts, and prediction errors | [Rmd](projects/05-beta-adjustments/project-05.Rmd) · [PDF](projects/05-beta-adjustments/project-05.pdf) |
| 6. Portfolio selection | Single-index and constant-correlation portfolios with and without short sales | [Rmd](projects/06-portfolio-selection/project-06.Rmd) · [PDF](projects/06-portfolio-selection/project-06.pdf) |
| 7. Multigroup and performance | Industry groups, out-of-sample growth, performance measures, and Fama decomposition | [Rmd](projects/07-multigroup-and-performance/project-07.Rmd) · [PDF](projects/07-multigroup-and-performance/project-07.pdf) |

## Data

- `data/stockData.csv`: monthly adjusted closing prices for 30 stocks and the S&P 500, January 2018 through September 2026, downloaded from Yahoo Finance with the course Shiny app's data function. The main analysis uses 2018–2022; Project 7 tests the portfolios in January 2023–September 2026.
- `data/statc183c283_5stocks.txt`: the [course's five-stock price dataset](http://www.stat.ucla.edu/~nchristo/statistics_c183_c283/statc183c283_5stocks.txt), January 1986 through December 2003, used in Project 3.
- `data/statc183c283_abc.txt`: the [course's portfolio-weight combinations](http://www.stat.ucla.edu/~nchristo/datac183c283/statc183c283_abc.txt), also used in Project 3.

Methods follow the [course handouts and lab examples](https://www.stat.ucla.edu/~nchristo/statistics_c183_c283/), including the multigroup model and portfolio performance calculations. The PDFs are the submitted versions; the source files use relative data paths for this repository layout.

## Run

Use R with Pandoc and a LaTeX installation for PDF output. Install the R packages once:

```r
install.packages(c("ggplot2", "knitr", "rmarkdown"))
```

From the repository root, render all seven projects:

```r
source("render.R")
```

Or render one project:

```r
rmarkdown::render("projects/01-risk-and-return/project-01.Rmd")
```
