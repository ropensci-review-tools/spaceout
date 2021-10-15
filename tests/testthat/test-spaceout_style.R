test_that("spaceout_style works", {
  code <- "say('hi'); list[[a[2]]]"
  expect_snapshot_output(
    styler::style_text(code, style = spaceout_style)
  )
})

test_that("spaceout_style does not mess up lines", {
  code <- "
f <- function () {

return (1)
}"
  expect_snapshot_output(
    styler::style_text(code, style = spaceout_style)
  )
})
