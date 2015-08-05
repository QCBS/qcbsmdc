#' Save files from a given table from the QCBS Mobile Data Collection System to your computer
#'
#' @param table a connection list file containing user_id and api_key values
#' @param folder the full path to the folder where you want the files to be saved
#' @return saves the files to local directory
#' @seealso \code{\link{qcbsmdc_list_forms}} for obtaining forms
#' @seealso \code{\link{qcbsmdc_get_tables}} for obtaining the content of the tables
#' @seealso \code{\link{qcbsmdc_list_tables}} for obtaining the content of the tables
#' @export
#' @examples
#' qcbsmdc_get_files('TablePhotos','C:/User/MyName/MyFiles')

qcbsmdc_get_files <- function(table,folder=getwd()) 
  {
  nfiles<-nrow(table)
  for (i in (1:nfiles)){
    binc<-getBinaryURL(table[i,'file_path'])
    zz <- file(paste(folder,as.character(table[i,'file_name']),sep='/'), "wb")
    writeBin(binc, zz)
    close(zz)  
  }
}