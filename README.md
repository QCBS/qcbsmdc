# qcbsmdc
R package to pull data from the Mobile Data Collection System of the Quebec Centre for Biodiversity Science

```r
install.packages('devtools')
install_github('https://github.com/QCBS/qcbsmdc.git')
library(qcbsmdc)
```

##Example Usage
Your user_id is the username you choose when registering on the http://quebio.ca/odk website. Your API key can be seen by clicking on "My account"
```r
conn=list(user_id="JohnDoe",api_key='8fjasdf3h112aad') 
my_forms<-qcbsmdc_list_forms(conn)
# Choose first form
table_list<-qcbs_list_tables(conn,my_forms[1])
# Choose first table
the_table<-qcbsmdc_get_tables(conn=conn,form_id=my_forms[1],table=table_list[1])
```
