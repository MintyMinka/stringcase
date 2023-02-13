library(testthat)

test_that(
  "Testing if the output is correct",
  {
    expect_equal(to_lowercase('QWERTYUIOPASDFGHJKLZXCVBNM'), 'qwertyuiopasdfghjklzxcvbnm')
    expect_equal(to_lowercase('ABBA'), 'abba')
    expect_error(to_lowercase('A B C'), "The argument string cannot contain blank spaces and space characters")
    expect_error(to_lowercase('M!@#$%^&*()'), "The argument string cannot contain punctuation characters")
    expect_error(to_lowercase('dfE'), "The argument string cannot contain lowercase letters")
    expect_error(to_lowercase('A1'), "The argument string cannot contain numbers")
    expect_error(to_lowercase(123), "The argument needs to be a string")
    expect_error(to_lowercase(NA), "The argument needs to be a string")
    expect_error(to_lowercase(5.5), "The argument needs to be a string")
    expect_error(to_lowercase(NaN), "The argument needs to be a string")
    expect_error(to_lowercase(TRUE), "The argument needs to be a string")
  }
)
