# How to setup using IntelliJ
### To Add JDBC Driver in IntelliJ
1. File -> Project Structure -> Libraries
1. Remove all old libaries
1. Press + and choose Java
1. Navigate to the project folder "cs157a/OnlineStore/lib/mysql-connector-java-8.0.12.jar"
1. Now you can run app.java

# How to setup using Eclipse
### I. Importing to Eclipse
* File -> Import... -> General -> Existing Projects Into Workspace... -> Select root directory -> Browse... -> "Locationofthisgithubdirectory\cs157a\OnlineStore" -> Finish

* It's important to choose "Online Store" which is inside cs157a. Don't import "cs157a"!!!

### II. To Add JDBC Driver in Eclipse (This step is not necessary if import is done correctly!)
1. Right-click on Project "OnlineStore"
1. Click Properties
1. Java Build Path -> Libraries Tab
1. ADD JARS...
1. "cs157a\OnlineStore\lib\mysql-connector-java-8.0.12.jar"
1. OK ... Apply and Close.
1. Now you can run app.java
