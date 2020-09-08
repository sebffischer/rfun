create_add_a <- function(a) {
  add_a <- function(x) {
    return(x + a)
  }
}

add_10 <- create_add_a(10)
print(add_10(10))
# how can we change that such that it adds 20? 

assign("a", 20, envir=environment(add_10))

print(add_10(10))
