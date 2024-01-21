# S&P 500 Timeseries Analysis

This project delves into the stock price time series of the top 20 companies within the S&P 500 index, offering an examination of their performance three years prior to and following the onset of the COVID-19 pandemic. The objective is to discern and evaluate the impact of the pandemic on the financial dynamics of these key market players. In our analysis, we exclusively utilize the adjusted close values of the stocks, a metric designed to account for corporate actions such as dividends and stock splits. This approach ensures a more accurate representation of the underlying trends in stock prices, allowing for a focused exploration of the pandemic's influence on the S&P 500 index.

## Stock Prices 2016-11-15 - 2019-11-15

![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/1.png)
*In the code every price graph can be isolated by clicking on its name*

## Stock Prices 2019-11-15 - 2022-11-30

![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/2.png)
*In the code every price graph can be isolated by clicking on its name*
## Autocorrelation

Autocorrelation refers to the correlation between a time series and a lagged version of itself. Analyzing autocorrelation may unveil trends and patterns, although in our specific case, it did not yield any discernible results.

### Autocorrelation Plots for Apple 2016-11-15 - 2019-11-15

![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/3.png)
![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/4.png)

### Autocorrelation Plots for Apple 2019-11-15 - 2022-11-30

![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/5.png)
![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/6.png)

## Correlation

The plot below reveals a strong correlation between the S&P 500 and the companies within it, which is expected. Additionally, there is apparent correlation among the top tech companies, as well as between Visa and Mastercard.

### Correlation 2016-11-15 - 2019-11-15

![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/7.png)
### Correlation network with 0.4 gate
![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/8.png)

### Correlation 2019-11-15 - 2022-11-30

Following the resolution of the COVID-19 pandemic, a heightened correlation appears evident among the stocks of various companies. This phenomenon can be adequately elucidated by the rapid ascent of their stock values subsequent to the abatement of the virus.

![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/9.png)

### Correlation network with 0.4 gate

![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/10.png)

## Causality

Causality in stock prices may be intricately linked to the dissemination of information. For instance, positive news regarding a company's performance can result in an upswing in its stock price, as well as in those of similar companies. Conversely, it may exert a negative impact on the stock price of a competitor.

In the context of the Granger causality test, lower p-values generally correspond to more robust evidence against the null hypothesis. The null hypothesis posits that the past values of one time series do not furnish valuable information for predicting another time series. Consequently, a lower p-value indicates more compelling evidence supporting the presence of Granger causality.

The networks are delineated with a degree of importance set at 5% as a threshold.
### Causality network 2016-11-15 - 2019-11-15

![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/11.png)

### Causality network 2019-11-15 - 2022-11-30
After the pass of covid-19 their seems to be stonger causality between companies stock pricies.
![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/12.png)

## Linear Regression

$R^2$ Adjusted (*bottom right*) has value of 99.5% indicates that approximately 99.5% of the variability in the dependent variable can be explained by the independent variable(s) included in the model.

### 2016-11-15 - 2019-11-15

![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/adjusted%20rsquare.png)

### 2019-11-15 - 2022-11-30

![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/adjusted%20rsquare%20after.png)
![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/r%20problem.png)
![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/regrs.png)
