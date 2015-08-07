# qcbsmdc
R package to pull data from the Mobile Data Collection System of the Quebec Centre for Biodiversity Science

```r
install.packages('devtools')
install_github('QCBS/qcbsmdc')
library(devtools)
library(qcbsmdc)
```

##Example Usage
Your user_id is the username you choose when registering on the http://quebio.ca/odk website. Your API key can be seen by clicking on "My account"
```r
conn=list(user_id="JohnDoe",api_key='8fjasdf3h112aad') 
my_forms<-qcbsmdc_list_forms(conn)
# Choose first form
table_list<-qcbsmdc_list_tables(conn,my_forms[1])
# Choose first table
the_table<-qcbsmdc_get_tables(conn=conn,form_id=my_forms[1],table=table_list[1])
# Get all tables
the_tables<-qcbsmdc_get_tables(conn=conn,form_id=my_forms[1],table='all')
# If the_tables has a table named, for example 'TablePhotos' which contains links to images, you can save them to a local folder this way
qcbsmdc_get_files(the_tables$TablePhotos,'C:/User/MyName/MyFiles')

```
