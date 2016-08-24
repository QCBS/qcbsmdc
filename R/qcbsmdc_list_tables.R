#' Get the list of tables for a given form and user on the QCBS Mobile Data Collection System
#'
#' @param conn a connection list file containing user_id and api_key values
#' @param form_id the name or id of the form from which the table list is to be obtained
#' @return character vector with list of table names
#' @seealso \code{\link{qcbsmdc_list_forms}} for obtaining forms
#' @seealso \code{\link{qcbsmdc_get_tables}} for obtaining the content of the tables
#' @export
#' @examples
#' ## api keys can be obtained from your account on the http://quebio.ca/odk website
#' conn=list(user_id="JohnDoe",api_key='8fjasdf3h112aad') 
#' table_list<-qcbs_list_tables(conn,'MyForm1')

qcbsmdc_list_tables <- function(conn,form_id)
{
  table_list<-fromJSON(getForm('http://mdc.quebio.ca/api/list_tables.php',user_id=conn$user_id,api_key=conn$api_key,formId=form_id,json=TRUE,structure=FALSE))
  return(table_list)
}