library(testthat)

test_that(
  "Testing if the output is correct",
  {
    expect_equal(to_uppercase('qwertyuiopasdfghjklzxcvbnm'), 'QWERTYUIOPASDFGHJKLZXCVBNM')
    expect_equal(to_uppercase('abba'), 'ABBA')
    expect_error(to_uppercase('a b c'), "The argument string cannot contain blank spaces and space characters")
    expect_error(to_uppercase('m!@#$%^&*()'), "The argument string cannot contain punctuation characters")
    expect_error(to_uppercase('dfE'), "The argument string cannot contain uppercase letters")
    expect_error(to_uppercase('a1'), "The argument string cannot contain numbers")
    expect_error(to_uppercase(123), "The argument needs to be a string")
    expect_error(to_uppercase(NA), "The argument needs to be a string")
    expect_error(to_uppercase(5.5), "The argument needs to be a string")
    expect_error(to_uppercase(NaN), "The argument needs to be a string")
    expect_error(to_uppercase(TRUE), "The argument needs to be a string")
  }
)
