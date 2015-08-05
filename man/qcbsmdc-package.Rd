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
}
\author{
\packageAuthor{qcbsmdc}

Maintainer: \packageMaintainer{qcbsmdc}
}
\references{
}
\keyword{ package }
\examples{
conn=list(user_id="JohnDoe",api_key='8fjasdf3h112aad') 
my_forms<-qcbsmdc_list_forms(conn)
# Choose first form
table_list<-qcbsmdc_list_tables(conn,my_forms[1])
# Choose first table
the_table<-qcbsmdc_get_tables(conn=conn,form_id=my_forms[1],table=table_list[1])
}
