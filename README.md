# How to setup using IntelliJ
### To Add JDBC Driver in IntelliJ
1. File -> Project Structure -> Libraries
1. Remove all old libaries
1. Press + and choose Java
1. Navigate to the project folder "cs157a/OnlineStore/lib/mysql-connector-java-8.0.12.jar"
1. Now you can run app.java

# How to setup using Eclipse
### I. Adding Git Project to Eclipse and Making Commit to GitHub
1. In Eclipse go to perspective -> Git Repositories -> click on Add Git Repository
1. Click on "Clone a Git Repository and add the clone to this view"
1. A new window will pop up showing Select Git Respository
1. Enter URL, Copy it from GitHub -> enter your GitHub authentication -> click next
1. It will give you a local directory, you can change it if you want
1. You should be able to see GitHub repository in eclipse
1. Now create a new java project in eclipse and give it a name
1. Right click on the project you created in the previous step -> team -> Share Project -> select the repository -> finish
1. You should be able to see the github project add it to your eclipse project
1. To commit to github, right click on the project in eclipe -> team -> Commit
 
### II. To Add JDBC Driver in Eclipse 
1. Right-click on Project "JRE System Library[JavaSE-1.8]"
1. Click Build Path -> Configure Build Path..
1. ADD JARS...
1. "cs157a\OnlineStore\lib\mysql-connector-java-8.0.12.jar" that you cloned it from github project and saved it somewhere in your pc
1. OK ... Apply and Close.
1. Now you can run app.java
