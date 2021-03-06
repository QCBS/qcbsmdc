#' Get the list of forms for a given user on the QCBS Mobile Data Collection System
#'
#' @param conn a connection list file containing user_id and api_key values
#' @return character vector with list of form names
#' @seealso \code{\link{qcbsmdc_list_tables}} for obtaining list of tables for a particular form
#' @seealso \code{\link{qcbsmdc_get_tables}} for obtaining the content of the tables
#' @export
#' @examples
#' # api keys can be obtained from your account on the http://quebio.ca/odk website
#' conn=list(user_id="JohnDoe",api_key="8fjasdf3h112aad")
#' my_forms<-qcbsmdc_list_forms(conn)
qcbsmdc_list_forms <- function(conn)
{
  forms<-names(fromJSON(getForm('http://mdc.quebio.ca/api/formlist.php',user_id=conn$user_id,api_key=conn$api_key,json=TRUE)))
  return(forms)
}