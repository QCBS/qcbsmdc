#' Get the content of all tables for a given form, or of a particular table, on the QCBS Mobile Data Collection System
#'
#' @param conn a connection list file containing user_id and api_key values
#' @param form_id the name or id of the form from which the table list is to be obtained
#' @param table either 'all' if all tables are desired, or the name of the table to be obtained
#' @return list containing all tables associated with the form as data frames (if table='all) or data frame if the table option specifies the name of a particular table
#' @seealso \code{\link{qcbsmdc_list_forms}} for obtaining forms
#' @seealso \code{\link{qcbsmdc_list_tables}} for obtaining the content of the tables
#' @seealso \code{\link{qcbsmdc_get_files}} for saving files (e.g. photos) to your a local directory
#' @export
#' @examples
#' ## api keys can be obtained from your account on the http://mdc.quebio.ca website
#' conn=list(user_id="JohnDoe",api_key='8fjasdf3h112aad') 
#' #GET all tables
#' table_list<-qcbsmdc_get_tables(conn=conn,form_id='MyForm1',table='all')
#' #GET a particular table
#' the_table<-qcbsmdc_get_tables(conn=conn,form_id='MyForm1',table='uuid0MyTable')

qcbsmdc_get_tables <- function(conn,form_id,table='all')
{
  if (table=='all') {
    table_list<-fromJSON(getForm('http://mdc.quebio.ca/api/list_tables.php',user_id=conn$user_id,api_key=conn$api_key,formId=form_id,json=TRUE,structure=FALSE))
    tables=list()
    for (tab in table_list) {
      tt<-getForm('http://mdc.quebio.ca/api/download_submission.php',user_id=conn$user_id,api_key=conn$api_key,formId=form_id,table=tab)
      tables[[tab]]<-read.csv(textConnection(tt))
    }  
  }else{
     tt<-getForm('http://mdc.quebio.ca/api/download_submission.php',user_id=conn$user_id,api_key=conn$api_key,formId=form_id,table=table)
     tables<-read.csv(textConnection(tt))
  }
  return(tables)
}