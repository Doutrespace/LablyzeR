
#' @export
#' @examples
#' \donttest{
#' x <- getFeqTable("Hello! R is Great")
#' getWordCloud(x)
#' }
getWordCloud <- function(d) {
  wordcloud::wordcloud(words = d$word, freq = d$freq, min.freq = 1,
            max.words=200, random.order=FALSE, rot.per=0.35,
            colors=RColorBrewer::brewer.pal(8, "Dark2"))
}
