# inspired by https://styler.r-lib.org/articles/customizing_styler.html
# approach from
# https://lorenzwalthert.netlify.app/post/customizing-styler-the-quick-way/
moar_parentheses <- function (pd_flat) {
    paren_after <- pd_flat$token %in% c ("'('", "'['", "LBB")
    if (!any (paren_after)) {
        return (pd_flat)
    }
    paren_before <- lead (paren_after, default = FALSE)
    pd_flat$spaces [paren_before] <- 1L
    pd_flat
}

#' The more spaceful style guide
#'
#' @export
#'
#' @examples
#' code <- "say(hi)"
#' styler::style_text (code, style = spaceout::spaceout_style)
spaceout_style <- function () {
    style <- styler::tidyverse_style (indent_by = 4)
    style$space <- c (style$space, maor = moar_parentheses)
    style$line_break$style_line_break_around_curly <- NULL
    style$style_guide_version <- "1.0.0"

    style
}
