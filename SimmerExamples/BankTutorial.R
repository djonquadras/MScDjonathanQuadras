# Single Customer

library(simmer)

customer <-
  trajectory("Customer's path") %>%
  log_("Here I am") %>%
  timeout(10) %>%
  log_("I must leave")

bank <-
  simmer("bank") %>%
  add_generator("Customer", customer, at(5))

bank %>% run(until = 100)
bank %>% get_mon_arrivals()
