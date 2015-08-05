\name{qcbsmdc-package}
\alias{qcbsmdc-package}
\alias{qcbsmdc}
\docType{package}
\title{
\packageTitle{qcbsmdc}
}
\description{
\packageDescription{qcbsmdc}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{qcbsmdc}
\packageIndices{qcbsmdc}
This package allows the easy transfer of data collected through the QCBS Mobile Data Collection System and ODK Collect to R. See http://quebio.ca/odk. 
}
\author{
\packageAuthor{qcbsmdc}

Maintainer: \packageMaintainer{qcbsmdc}
}
\references{
~~ Literature or other references for background information ~~
}
~~ Optionally other standard keywords, one per line, from file KEYWORDS in the R documentation directory ~~
\keyword{ package }
\seealso{
~~ Optional links to other man pages, e.g. ~~
~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
}
\examples{
conn=list(user_id="JohnDoe",api_key='8fjasdf3h112aad') 
my_forms<-qcbsmdc_list_forms(conn)
# Choose first form
table_list<-qcbs_list_tables(conn,my_forms[1])
# Choose first table
the_table<-qcbsmdc_get_tables(conn=conn,form_id=my_forms[1],table=table_list[1])
}
