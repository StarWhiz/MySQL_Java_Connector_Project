# cs157a

How to setup using IntelliJ

To Add JDBC Driver in IntelliJ

1. File -> Project Structure -> Libraries
2. Remove all old libaries
3. Press + and choose Java
4. Navigate to the project folder "cs157a/OnlineStore/lib/mysql-connector-java-8.0.12.jar"
5. Now you can run app.java

How to setup using Eclipse

I. Importing to Eclipse

1. File -> Import... -> General -> Existing Projects Into Workspace... -> Select root directory
-> Browse... -> "Locationofthisgithubdirectory\cs157a\OnlineStore" -> Finish
2. It's important to choose "Online Store" which is inside cs157a. Don't import "cs157a"

II. To Add JDBC Driver in Eclipse (This step is not necssary if import is done correctly!)

1. Right-click on Project "OnlineStore"
2. Click Properties
3. Java Build Path -> Libraries Tab
4. ADD JARS...
5. "cs157a\OnlineStore\lib\mysql-connector-java-8.0.12.jar"
6. OK ... Apply and Close.
7. Now you can run app.java
