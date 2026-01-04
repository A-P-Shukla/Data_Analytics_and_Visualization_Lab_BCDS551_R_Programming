library(arules) 
transac ons_list <- list( 
  c("bread", "milk"), 
  c("bread", "bu er"), 
  c("milk", "bu er"), 
  c("bread", "milk", "bu er"), 
  c("bread", "cheese"), 
  c("bread", "milk"), 
  c("bread", "bu er"), 
  c("milk", "bu er"), 
  c("bread", "milk", "bu er"), 
  c("bread", "cheese") 
) 
transac ons <- as(transac ons_list, "transac ons") 
rules <- apriori(transac ons, parameter = list(supp = 0.2, conf = 0.7)) 
inspect(rules) 
ground_truth <- data.frame( 
  rule = c( 
    "bread => milk", 
    "bread => bu er", 
    "milk => bu er", 
    "bread,milk => bu er", 
    "bread => cheese" 
  ), 
  is_true = c(TRUE, TRUE, FALSE, TRUE, FALSE), 
  stringsAsFactors = FALSE 
) 
rules_df <- as(rules, "data.frame") 
rules_df$rule <- gsub("\\{|\\}", "", rules_df$rules) 
eval_data <- merge(ground_truth, rules_df, by = "rule", all.x = TRUE) 
eval_data$predicted <- !is.na(eval_data$support) 
accuracy <- sum(eval_data$is_true == eval_data$predicted) / nrow(eval_data) 
print(eval_data) 
cat("Accuracy:", accuracy, "\n")