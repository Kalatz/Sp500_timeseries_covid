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

### 2016-11-15 - 2019-11-15

Before COVID-19, the linear regression analysis conducted on the first 20 companies of the S&P500 yields highly promising results, as evidenced by the exceptionally high Multiple R-squared value of 0.9953. This indicates that the model explains approximately 99.53% of the variance in the dependent variable, suggesting a robust fit to the data. The Adjusted R-squared value of 0.9952 (red arrow) further supports this finding, suggesting that the inclusion of predictors has not introduced unnecessary complexity to the model. Such a high level of explained variance implies that the selected independent variables effectively capture the variation in the dependent variable, providing a comprehensive understanding of the relationships within the dataset. These results instill confidence in the model's ability to make accurate predictions for the companies under consideration, highlighting its statistical significance and potential utility in forecasting and analysis within the context of the S&P500.

![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/adjusted%20rsquare.png)

### 2019-11-15 - 2022-11-30
🟣
The updated linear regression analysis post-COVID for the first 20 companies of the S&P500 reveals some noteworthy findings. Firstly, the increase in the Residual Standard Error (RSE) to 30.39 suggests a higher average deviation of the observed values from the model's predictions compared to the pre-COVID scenario. However, it's important to note that absolute comparisons should be made cautiously, as the scale of the dependent variable may have changed or other external factors may be influencing the data post-COVID.

The Multiple R-squared and Adjusted R-squared (red arrow) values have both increased, reaching 0.9972 and 0.9971, respectively. These exceptionally high values indicate that the updated model explains approximately 99.72% of the variance in the dependent variable, showcasing an even stronger fit than the pre-COVID model. The Adjusted R-squared, being close to the Multiple R-squared, implies that the addition of predictors hasn't introduced substantial complexity.

The F-statistic of 1.316e+04 remains notably high, with a p-value < 2.2e-16, reinforcing the statistical significance of the post-COVID model. This suggests that the overall model is highly significant, further supporting the reliability of the relationships captured by the independent variables.

In summary, the post-COVID linear regression analysis indicates a slightly increased variability in predictions (as reflected by the higher RSE), but the model's explanatory power has strengthened significantly, emphasizing its continued relevance and effectiveness in understanding the dynamics of the first 20 companies in the S&P500 in the altered economic landscape post-COVID.

![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/adjusted%20rsquare%20after.png)
## Linear Regression after dimensionality reduction

Dimensionality reduction is significant for enhancing computational efficiency, mitigating overfitting, and improving model interpretability. It facilitates data visualization, reduces noise, and aids in handling collinearity, ultimately contributing to more effective feature representation and model performance.

### 2016-11-15 - 2019-11-15

The linear regression analysis after dimensionality reduction, specifically focusing on AbbVie, Alphabet_A, Tesla, and JPMorgan among the first 20 companies of the S&P500 before COVID, provides valuable insights. While the Residual Standard Error (RSE) has increased to 43.56, indicative of a larger deviation in predictions, the model's overall explanatory power remains substantial, with a Multiple R-squared of 0.9632. The Adjusted R-squared, closely aligned with the Multiple R-squared at 0.963, underscores the robustness of the chosen variables in explaining approximately 96.32% of the variance in the dependent variable. The statistically significant F-statistic of 4919, coupled with a p-value < 2.2e-16, reinforces the model's validity. Thus, even with the reduced set of variables, namely AbbVie, Alphabet_A, Tesla, and JPMorgan, this analysis underscores their significant impact on the dependent variable for the selected companies prior to the COVID era.

![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/r%20problem.png)

### 2019-11-15 - 2022-11-30

The linear regression results after dimensionality reduction post-COVID, with the exclusion of Nvidia and Alphabet Class C, indicate a robust model. The Residual Standard Error (RSE) has slightly increased to 30.82, suggesting a marginally larger deviation in predictions. However, the Multiple R-squared of 0.9971 and the Adjusted R-squared of 0.997 demonstrate an exceptional level of explained variance, showcasing the model's strong fit to the data. The F-statistic of 1.422e+04, with a p-value < 2.2e-16, signifies the continued statistical significance of the model. In summary, despite the exclusion of Nvidia and Alphabet Class C, the model remains highly effective in explaining the variability in the dependent variable for the selected companies post-COVID.

![Alt text](https://github.com/Kalatz/Sp500_timeseries_covid/blob/main/Plots/regrs.png)
