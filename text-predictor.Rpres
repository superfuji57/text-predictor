Text Prediction App
========================================================
author: Andy Won
date: December 14th, 2014

The Project
========================================================

Combining knowledge gained through the data science specialization with the tools provided by the field of natural language processing:

1. Explore a text corpora of blogs, tweets, and news articles
- Use the text to develop an algorithm for next-word text prediction
- Implement the algorithm into a web app with R's Shiny package

The Data
========================================================

- The data totaled over 4 million lines over 100 million words
- Due to the size of the data and limitations of the machine, I randomly sampled ~10% of the lines
- Using the sample, I generated 2-, 3, and 4-grams with frequencies

The Algorithm
========================================================

* The method used is a simplified version of [Katz's back-off model](http://en.wikipedia.org/wiki/Katz%27s_back-off_model)

* Using the the n-grams generated from the text, I split them into n-1 and nth columns, along with their frequencies

* With the last three words of the entered text, the app returns the three most frequent 4-grams

        + if less than three are found, it will move to 3-grams with the last 2 words, and so forth
        

The App
========================================================

- The app is deployed [here](http://andywon.shinyapps.io/text-predictor) using ShinyApps
- Enter any text in the input field and the app will provide three next-word predictions
- [My Github repo](https://github.com/superfuji57/text-predictor) with the algorithm and app code

### Lessons and To-do list:
- The model is pretty simple and unpersonalized. To-do: add function to update and weight user-entered text when next-word does not match predicitons
- The app is pretty slow. To-do: Do more testing and look for bottle necks.
- The app could is missing interactivity. To-do: Look for ways (maybe action buttons?) so that users can more simply use the predicted words.
