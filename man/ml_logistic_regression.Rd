% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ml_classification_logistic_regression.R
\name{ml_logistic_regression}
\alias{ml_logistic_regression}
\title{Spark ML -- Logistic Regression}
\usage{
ml_logistic_regression(x, formula = NULL, fit_intercept = TRUE,
  elastic_net_param = 0, reg_param = 0, max_iter = 100L,
  threshold = 0.5, thresholds = NULL, tol = 1e-06, weight_col = NULL,
  aggregation_depth = 2L, features_col = "features", label_col = "label",
  family = "auto", prediction_col = "prediction",
  probability_col = "probability", raw_prediction_col = "rawPrediction",
  uid = random_string("logistic_regression_"), ...)
}
\arguments{
\item{x}{A \code{spark_connection}, \code{ml_pipeline}, or a \code{tbl_spark}.}

\item{formula}{Used when \code{x} is a \code{tbl_spark}. R formula as a character string or a formula. This is used to transform the input dataframe before fitting, see \link{ft_r_formula} for details.}

\item{fit_intercept}{Boolean; should the model be fit with an intercept term?}

\item{elastic_net_param}{ElasticNet mixing parameter, in range [0, 1]. For alpha = 0, the penalty is an L2 penalty. For alpha = 1, it is an L1 penalty.}

\item{reg_param}{Regularization parameter (aka lambda)}

\item{max_iter}{The maximum number of iterations to use.}

\item{threshold}{in binary classification prediction, in range [0, 1].}

\item{thresholds}{Thresholds in multi-class classification to adjust the probability of predicting each class. Array must have length equal to the number of classes, with values > 0 excepting that at most one value may be 0. The class with largest value \code{p/t} is predicted, where \code{p} is the original probability of that class and \code{t} is the class's threshold.}

\item{tol}{Param for the convergence tolerance for iterative algorithms.}

\item{weight_col}{The name of the column to use as weights for the model fit.}

\item{aggregation_depth}{(Spark 2.1.0+) Suggested depth for treeAggregate (>= 2).}

\item{features_col}{Features column name, as a length-one character vector. The column should be single vector column of numeric values. Usually this column is output by \code{\link{ft_r_formula}}.}

\item{label_col}{Label column name. The column should be a numeric column. Usually this column is output by \code{\link{ft_r_formula}}.}

\item{family}{(Spark 2.1.0+) Param for the name of family which is a description of the label distribution to be used in the model. Supported options: "auto", "binomial", and "multinomial."}

\item{prediction_col}{Prediction column name.}

\item{probability_col}{Column name for predicted class conditional probabilities.}

\item{raw_prediction_col}{Raw prediction (a.k.a. confidence) column name.}

\item{uid}{A character string used to uniquely identify the ML estimator.}

\item{...}{Optional arguments; currently unused.}
}
\value{
The object returned depends on the class of \code{x}.

\itemize{
  \item \code{spark_connection}: When \code{x} is a \code{spark_connection}, the function returns an instance of a \code{ml_predictor} object. The object contains a pointer to
  a Spark \code{Predictor} object and can be used to compose
  \code{Pipeline} objects.

  \item \code{ml_pipeline}: When \code{x} is a \code{ml_pipeline}, the function returns a \code{ml_pipeline} with
  the predictor appended to the pipeline.

  \item \code{tbl_spark}: When \code{x} is a \code{tbl_spark}, a predictor is constructed then
  immediately fit with the input \code{tbl_spark}, returning a prediction model.

  \item \code{tbl_spark}, with \code{formula}: specified When \code{formula}
    is specified, the input \code{tbl_spark} is first transformed using a
    \code{RFormula} transformer before being fit by
    the predictor. The object returned in this case is a \code{ml_model} which is a
    wrapper of a \code{ml_pipeline_model}.
}
}
\description{
Perform classification using logistic regression.
}
\seealso{
See \url{http://spark.apache.org/docs/latest/ml-classification-regression.html} for
  more information on the set of supervised learning algorithms.

Other ml algorithms: \code{\link{ml_aft_survival_regression}},
  \code{\link{ml_decision_tree_classifier}},
  \code{\link{ml_gbt_classifier}},
  \code{\link{ml_generalized_linear_regression}},
  \code{\link{ml_isotonic_regression}},
  \code{\link{ml_linear_regression}},
  \code{\link{ml_linear_svc}},
  \code{\link{ml_multilayer_perceptron_classifier}},
  \code{\link{ml_naive_bayes}},
  \code{\link{ml_one_vs_rest}},
  \code{\link{ml_random_forest_classifier}}
}
\concept{ml algorithms}
