# todo Application Tutorial
Let's learn from example.

Throughout this tutorial, we will walk you through creating an advanced todo Application by using the awesome Enterprise Application Framework - [Skyve](https://skyve.org/).

This todo application will assign and manage tasks needed to be done for our project. We also try to put some effort in to create a report by using Jaspersoft BI tools which is embedded in the Skyve Framework.

In this project, we will try to cover as much of the Skyve development process and its concepts as possible.

***This tutorial assumes familiarity with web technology and architecture, Java EE concepts, the Java language and the use of common development tools like Eclipse.***

## 1 - Getting started
Before continuing with our tutorial, there are some pages you may want to visit:

* [What is Skyve?](https://skyve.org/what-is-skyve) - Will answer what [Skyve](https://skyve.org) is, and how it will be useful in your Enterprise Application Development.

* [Getting Started](https://skyve.org/getting-started) - Will help give you some ideas on how to start with our [Skyve](https://skyve.org) Framework.

* [Dev Guide](https://skyvers.github.io/skyve-dev-guide/) - Will help you learn and understand about our development. It also covers most [Skyve Framework](https://skyve.org) elements and concepts. There are many real examples for you to refer to also.

* [Join Us On Slack](https://join.slack.com/t/skyveframework/shared_invite/enQtNDMwNTcyNzE0NzI2LWNjMTBlMTMzNTA4YzBlMzFhYzE0ZmRhOWIzMWViODY4ZTE1N2QzYWM1MTdlMTliNDIyYTBkOWZhZDAxOGQyYjQ) - If you get stuck, feel free to ask the team some questions on the Skyve Slack server.

Now, moving on to the next stage to learn how to create an application with [Skyve Framework](https://skyve.org).
## 2 - Create 
App Project
To create a new [Skyve](https://skyve.org) Project, you can go to the [Getting Started](https://skyve.org/getting-started) page, then scroll down to the **Skyve For Developers**  section, and click the **Create** button.
![](doc_img_src/create%20skyve%20project.png)
***We recommend you watch the video guide first***

Or, you can go directly to the [Skyve Project Creator](https://foundry.skyve.org/foundry/project.xhtml).

On the Skyve Project Creation page, fill in the below information:
* ***Email address***: A valid email address that you will be using to receive the download link from [Skyve](https://skyve.org)
* ***Project Name***: Your project name
* ***Customer Name***: Your customer name
* ***Database Dialect***: Select your Database Engine (H2 is suggested for ease, though there is a guide further on for setting up MySQL) 
* ***Skyve Script***: This field is optional - we will refer to Skyve Script later in this course
![](doc_img_src/create%20skyve%20form.png)

Finally, click the **Create Project** button.

Now, check your email inbox to find your Project Download Link. Download the project and extract it to your workspace.
## 3 - Import todoApp Project
Now we will import the project to Eclipse.

Once in Eclipse, right-click in the Project Explorer window, and choose **Import**.
![](doc_img_src/ImportingMavenProjectEclipse1Guide.PNG)

Click the Maven dropdown box and select Existing Maven Projects.
Then click the **Next** button.

![](doc_img_src/ImportingMavenProjectEclipse2Guide.PNG)

The next step is to browse for your root project folder ([Skyve Project](https://skyve.org) (which you extracted in the last section of this guide), and select it.

![](doc_img_src/ImportingMavenProjectEclipse3Guide.PNG)

Finally, click the **Finish** button.

![](doc_img_src/ImportingMavenProjectEclipse4Guide.PNG)

Wait for the Eclipse Import Wizard to finish the importing process and re-index your project.
Now we can continue to the next page to install and configure [WildFly](https://wildfly.org/) Server to run our application.
## 4 - Install and Configure WildFly Server
To run our **todoApp** we will need to install and configure for [WildFly](https://wildfly.org) Server.
Skyve works well on WildFly version 13+ (tested and runs smoothly on **WildFly 17** - as of last revision of this tutorial).
### 4-1 - Installing WildFly Server
*You can skip this step if WildFly Server is already installed on your system.*

Before installing WildFly Server, make sure **JBoss Tools** is installed on your system.

To install JBoss Tools, click on Help, then click Eclipse Marketplace.

![](doc_img_src/InstallingJBossEclipse1Guide.PNG)

In the searchbar, enter 'jboss' then search.

Select the JBoss Tools version that the search returns, and click Install.

![](doc_img_src/InstallingJBossEclipse2Guide.PNG)

To check if JBoss Tools is installed properly, click on Help, then click Eclipse Marketplace.

![](doc_img_src/FindingJBossEclipse1Guide.PNG)

Click Installed.

If the JBoss Tools plugin is present, you are ready to continue.

![](doc_img_src/FindingJBossEclipse2Guide.PNG)

After **JBoss Tools** was installed properly, follow these steps to install WildFly Server.
1. Once Eclipse is opened, right-click under the Package Explorer tab and highlight New, then from the pop-out, click on Server

![](doc_img_src/InstallingWildflyEclipse1Guide.PNG)

2. Select the WildFly version you wish to work with and click Next

![](doc_img_src/InstallingWildflyEclipse2Guide.PNG)

3. Click Next again

![](doc_img_src/InstallingWildflyEclipse3Guide.PNG)

4. Once more, click the Next button

![](doc_img_src/InstallingWildflyEclipse4Guide.PNG)

5. Click on the Download and install runtime link

![](doc_img_src/InstallingWildflyEclipse5Guide.PNG)

6. Select the latest version of WildFly, then click Next

![](doc_img_src/InstallingWildflyEclipse6Guide.PNG)

7. Once you have read the terms of the licence agreement, check the box to accept the terms, and click Next

![](doc_img_src/InstallingWildflyEclipse7Guide.PNG)

8. Finally, select the path for where you wish your download and install locations to be found, then click Finish to complete the
installation

![](doc_img_src/InstallingWildflyEclipse8Guide.PNG)

9. Wait for Eclipse to complete the download and installation process before moving on to the next step

![](doc_img_src/wildfly%20download%20and%20install.png)

### 4-2 - Configure Wildfly datasource to support MySQL

It is easier to start your Skyve Application with H2 Database as it does not require any extra configurations. However, in this tutorial I want to place you on the real world of Enterprise Application Development by using MySQL Database.

You can check if MySQL installed on your system, if it is not you can go to [MySQL Download](https://dev.mysql.com/downloads/mysql/), choose the right version for your system, and install MySQL on your system.

You may also need a SQL Client to work with your data, [MySQL Workbench](https://www.mysql.com/products/workbench/) is perfect for it, however you may use any other tools which you are familiar with.

Once MySQL is ready on your system, let us configure WildFly datasource to support MySQL Engine.

1. Download MySQL JDBC Driver
Visit [MySQL Connector JDBC page](https://dev.mysql.com/downloads/connector/j/)

At this moment, JDBC 8 connector is not supported. So we will go with the previous Generally Available (GA) release.

![](doc_img_src/jdbc%20previouse%20GA%20version.png)

Select the Operating System that you are creating your todoApp on.
![](doc_img_src/ConfigureWildFlyForMySQL1Guide.PNG)

Download a suitable version for your Operating System. In this tutorial I am using Windows Operating System, so I go to download **Platform Independent (Architecture Independent), ZIP Archive**

2. Deploy MySQL JDBC Driver
Navigate to the directory ***$WILDFLYHOME/modules/system/layers/base/com***
***($WILDFLYHOME - the Root Folder, which you selected when you install WildFly Server - For example: D:\JavaPrograms\EclipseWorkSpace\wildfly-16.0.0.Final)***

3. Create mysql/main directory

4. Navigate to the main directory you just created and copy MySQL JDBC driver's jar there
![](doc_img_src/mysql%20connector%20j%20main.png)

5. Create a module.xml file with the content below:
```xml
<?xml version="1.0" encoding="UTF-8"?>

<module xmlns="urn:jboss:module:1.1" name="com.mysql">
    <resources>
        <resource-root path="mysql-connector-java-[VERSION]-bin.jar"/>
    </resources>
    <dependencies>
        <module name="javax.api"/>
        <module name="javax.transaction.api"/>
        <module name="javax.servlet.api" optional="true"/>
    </dependencies>
</module>
```
Replace [VERSION] with your JDBC Connector Version.

### 4-3 - Creating an xml file
(If you already know how to create an xml file, continue on to Step 6 of Configuring Wildfly datasource to support MySQL)

To create an xml file, click on File, then select New, and click Other.
![](doc_img_src/ConfigureWildFlyForMySQL2Guide.PNG)

Scroll down and click the XML dropdown box, then select XML File, then click Next.
![](doc_img_src/ConfigureWildFlyForMySQL3Guide.PNG)

Select RemoteSystemsTempFiles, then rename the file to 'module.xml', and click Next.
![](doc_img_src/ConfigureWildFlyForMySQL4Guide.PNG)

Check the box to Create XML file from an XML template, and again, click Next.
![](doc_img_src/ConfigureWildFlyForMySQL5Guide.PNG)

Finally, click Finish.

![](doc_img_src/ConfigureWildFlyForMySQL6Guide.PNG)

6. Navigate to the directory  ***$WILDFLYHOME/standalone/configuration***, and open the ***standalone.xml*** file. 
Look for datasources.
```xml
<subsystem xmlns="urn:jboss:domain:datasources:5.0">
    <datasources>
        <datasource jndi-name="java:jboss/datasources/ExampleDS" pool-name="ExampleDS" enabled="true" use-java-context="true" statistics-enabled="${wildfly.datasources.statistics-enabled:${wildfly.statistics-enabled:false}}">
            <connection-url>jdbc:h2:mem:test;DB_CLOSE_DELAY=-1;DB_CLOSE_ON_EXIT=FALSE</connection-url>
            <driver>h2</driver>
            <security>
                <user-name>sa</user-name>
                <password>sa</password>
            </security>
        </datasource>
        <drivers>
            <driver name="h2" module="com.h2database.h2">
                <xa-datasource-class>org.h2.jdbcx.JdbcDataSource</xa-datasource-class>
            </driver>
        </drivers>
    </datasources>
</subsystem>
```

And define MySQL driver here.

```xml
<subsystem xmlns="urn:jboss:domain:datasources:5.0">
    <datasources>
        <datasource jndi-name="java:jboss/datasources/ExampleDS" pool-name="ExampleDS" enabled="true" use-java-context="true" statistics-enabled="${wildfly.datasources.statistics-enabled:${wildfly.statistics-enabled:false}}">
            <connection-url>jdbc:h2:mem:test;DB_CLOSE_DELAY=-1;DB_CLOSE_ON_EXIT=FALSE</connection-url>
            <driver>h2</driver>
            <security>
                <user-name>sa</user-name>
                <password>sa</password>
            </security>
        </datasource>
        <drivers>
            <driver name="h2" module="com.h2database.h2">
                <xa-datasource-class>org.h2.jdbcx.JdbcDataSource</xa-datasource-class>
            </driver>
		<driver name="mysql" module="com.mysql"/>
        </drivers>
    </datasources>
</subsystem>
```


So far we have completed the initial configuration step.
Now we will deploy our todoApp to our WildFly Server, then configure our database for todoApp and run it for the first time.

## 5 - Deploy and Configure Skyve Project
### 5-1 - Deploy Skyve Project
Its easy to deploy your [Skyve](https://skyve.org) project to your WildFly Server.
1. Open WildFly deployments folder
Right-click on the server and click on Show In, then click on File Browser
![](doc_img_src/DeployingSkyveProject1Guide.PNG)
2. Expand the todoApp Project, you will see the deployments folder
Copy todoApp.json and todoApp-ds.xml from the todoApp deployments folder to the WildFly deployments folder that you opened in the previous step.
![](doc_img_src/DeployingSkyveProject2Guide.PNG)
3. Add todoApp project to Wildfly Server by right-clicking on your server, and click Add and Remove
![](doc_img_src/DeployingSkyveProject3Guide.PNG)
4. Select todoApp from Available, then click 'Add >', and lastly click the Finish button
![](doc_img_src/DeployingSkyveProject4Guide.PNG)

### 5-2 - Configure Skyve Project
We will need to do some configuration to run our project.

#### Configure todoApp.json
Change the content settings

Open your Eclipse Workspace folder and create a content folder called 'content'.
![](doc_img_src/workspace%20content%20folder.png)

Open todoApp.json that you previously moved into your Wildfly deployments folder and look for Content settings.
```json
// Content settings
	content: {
		// directory path (note that if you are running on Windows do not use backslashes)
		directory: "${SKYVE_CONTENT:C:/_/skyve/skyve-ee/content/}",
		// CRON Expression for CMS Garbage Collection job - run at 7 past the hour every hour
		gcCron: "0 7 0/1 1/1 * ? *",
		// Attachments stored on file system or inline
		fileStorage: true
	},
```

Change the directory path to your content folder. It will become something similar to below:

```json
// Content settings
	content: {
		// directory path (note that if you are running on Windows do not use backslashes)
		directory: "${SKYVE_CONTENT:D:/JavaPrograms/EclipseWorkSpace/content/}",
		// CRON Expression for CMS Garbage Collection job - run at 7 past the hour every hour
		gcCron: "0 7 0/1 1/1 * ? *",
		// Attachments stored on file system or inline
		fileStorage: true
	},
```

Next, we will need to change the Environment Settings.
By default, [Skyve](https://skyve.org) is set in production mode. So we will need to change this to development mode.
```json
// Environment settings
	environment: {
		// test, sit, uat, dev etc: null = prod
		identifier: "${IDENTIFIER:null}",
		// Dev Mode does not cache the view metadata allowing the effects of view changes to be observed without redeploying
		devMode: true,
		// Customer Default
		customer: "ezmasy",
		// Run the jobs scheduled in the data store or not - set false for slave skyve instances
		jobScheduler: true,
		// Password hashing algorithm - usually bcrypt, pbkdf2, scrypt. MD5 and SHA1 are unsalted and obsolete.
        passwordHashingAlgorithm: "bcrypt",
        // Absolute path on the filesystem to the source directory where modules live for creating new documents
        // via skyve script, e.g. c:/workspace/project/src/main/java
        moduleDirectory: null,
        // email address for system support
        supportEmailAddress: "rucvan.pr@gmail.com"
	},
```
We will need to change the identifier to dev.

One more concept we need to take note of; in todoApp.json, define your ***bootstrap user settings***, later we will use this user information to login to our todoApp.
```json
// bootstrap user settings - creates a user with all customer roles assigned, if the user does not already exist
	bootstrap: {
		customer: "ezmasy",
		user: "${BOOTSTRAP_USERNAME:setup}",
		email: "rucvan.pr@gmail.com",
		password: "${BOOTSTRAP_PASSWORD:setup}"
	}
```

We have now done the basic configurations needed to make sure our project can run.

Now we will move on to MySQL Data Source configuration.

#### Configure todoApp-ds.xml
```json
<?xml version="1.0" encoding="UTF-8"?>
<datasources>
	<datasource jndi-name="java:/todoAppDB" pool-name="todoApp" enabled="true" jta="true" use-ccm="false">
		<connection-url>jdbc:mysql://todoApp_db:3306/todoApp?useCursorFetch=true&amp;defaultFetchSize=100</connection-url>
		<driver>mysql</driver>
		<pool>
			<min-pool-size>5</min-pool-size>
			<max-pool-size>10</max-pool-size>
		</pool>
		<security>
			<user-name>sa</user-name>
			<password>sa</password>
		</security>
	</datasource>
</datasources>
```

For example: my database is todoApp and it will deploy on my local computer at port 3306.

Then I will need to change the connection-url like below:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<datasources>
	<datasource jndi-name="java:/todoAppDB" pool-name="todoApp" enabled="true" jta="true" use-ccm="false">
		<connection-url>jdbc:mysql://localhost:3306/todoApp?useCursorFetch=true&amp;defaultFetchSize=100</connection-url>
		<driver>mysql</driver>
		<pool>
			<min-pool-size>5</min-pool-size>
			<max-pool-size>10</max-pool-size>
		</pool>
		<security>
			<user-name>sa</user-name>
			<password>sa</password>
		</security>
	</datasource>
</datasources>
```

Another change that will need to be applied is the security, you will need provide valid authentication to connect to your database.

For security reasons, we strongly recommend you to create a separate account for each application, so each application is not affected by other applications if one of the connections was revealed. It is good practice to use strong password for your applications. If you would rather leave it to a random generator, you can use this web application to generate a strong, secure password:  https://passwordsgenerator.net/
```xml
<?xml version="1.0" encoding="UTF-8"?>
<datasources>
	<datasource jndi-name="java:/todoAppDB" pool-name="todoApp" enabled="true" jta="true" use-ccm="false">
		<connection-url>jdbc:mysql://localhost:3306/todoApp?useCursorFetch=true&amp;defaultFetchSize=100</connection-url>
		<driver>mysql</driver>
		<pool>
			<min-pool-size>5</min-pool-size>
			<max-pool-size>10</max-pool-size>
		</pool>
		<security>
			<user-name>todouser</user-name>
			<password>Ggq"MBb,q5\KEzx*</password>
		</security>
	</datasource>
</datasources>
```
## 6 - Run todoApp

Before running your project, we will need to generate the domain class first.

1. Click on the dropdown for your todoApp in the Project Explorer and click Run As, then click on Run Configurations
![](doc_img_src/RunToDoApp1Guide.PNG)

2. Select the Maven Build dropdown, then click on todoApp - Generate Domain, then click Run
![](doc_img_src/RunToDoApp2Guide.PNG)

* Wait for a few seconds (this may take longer to run for the first time), once the process is complete you will see the result in the Console Window like below;
![](doc_img_src/build%20success.png)
   
3. In the Servers window, right-click on the server and click Start.
![](doc_img_src/RunToDoApp3Guide.PNG)

4. When you see the below info in your Console Window, todoApp was deployed and is running on your localhost server.
![](doc_img_src/run%20properly.png)

If not, you may try to debug by yourself to find the source of the problem, or [Join Us On Slack](https://join.slack.com/t/skyveframework/shared_invite/enQtNDMwNTcyNzE0NzI2LWNjMTBlMTMzNTA4YzBlMzFhYzE0ZmRhOWIzMWViODY4ZTE1N2QzYWM1MTdlMTliNDIyYTBkOWZhZDAxOGQyYjQ) and ask any questions there. You will get support from the [Skyve](https://skyve.org) team or a community team member.

5. Access todoApp from Web Browser at [http://localhost:8080/todoApp](http://localhost:8080/todoApp)

![](doc_img_src/run%20todo%20app%20on%20browser.png)

6. You can login with your Bootstrap user info, by default:

User Name: setup

Password: setup

7. After you login successfully, you will see something similar to this

![](doc_img_src/login%20success.png)

By default, Skyve opens with the Admin module, the Admin module holds quite a few useful functions which are ready for you to evaluate [Skyve Framework](https://skyve.org).

The user guide is available at https://skyvers.github.io/skyve-user-guide/. The user guide is for end users of Skyve applications and describes how to navigate around the user interface and make use of the built in functions that ship with Skyve.

## 7 - Build todoApp Module
Module concept and module components are defined at https://skyvers.github.io/skyve-dev-guide/modules/
so we will not repeat it in this tutorial.

### 7-1 - Create 'todo' module
To create the todo module, click on the dropdowns following the photo below to access the src/main/java folder, then right-click and add a new package.
![](doc_img_src/BuildToDoAppModule1Guide.PNG)

Rename the module to 'todo' and click Finish.
![](doc_img_src/BuildToDoAppModule2GuideV3.PNG)

### 7-2 - Create `todo.xml` file
Inside the `todo` package, create an xml file named `todo.xml`

`todo.xml` file will have below components:
#### Module header
```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<module name="todo" title="Todo Module" xmlns="http://www.skyve.org/xml/module" xsi:schemaLocation="http://www.skyve.org/xml/module ../../schemas/module.xsd"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<homeRef>edit</homeRef>
	<homeDocument>Todo</homeDocument>
</module>
```
*In this example, the home (or default) target for the module is the edit view of the Todo document.*

#### Documents
Skyve uses the term document to indicate the business-focused nature of application objects.

In this tutorial we assume the app will have the below documents - objects involved 
1. Staff - who will create, assign, and complete tasks
2. Projects - each project may contain multiple tasks, based on customer requirements
3. Todo - task needed to be done for each project

So lets go define the above documents inside our `todo.xml`

```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<module name="todo" title="Todo Module" xmlns="http://www.skyve.org/xml/module" xsi:schemaLocation="http://www.skyve.org/xml/module ../../schemas/module.xsd"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<homeRef>edit</homeRef>
	<homeDocument>Todo</homeDocument>
	
	<documents>
		<document ref="Project" />
		<document ref="Todo" />
		<document ref="Staff" />
		
		<document ref="User" moduleRef="admin" />
		<document ref="Contact" moduleRef="admin" />
	</documents>
</module>
```
In this example, we defined documents `User`, and `Contact` as referent from the `admin` module because each user in our application will associate with one staff.

#### Roles
Each role specifies the privilege levels for documents that the role will access (and associated actions). The role name is the name displayed when assigning roles to user security groups in the admin.

For each document, the privilege level is specified in terms of C (Create) R (Read) U (Update) D (Delete) and the document scope access level, either G (Global), C (Customer), D (Data Group) or U (User). The underscore character (_) means no permission is granted.

In our `Todo App`, we will define below roles:
1. Staff Manager - who are able to manage Staff
2. Project Manager - to grant to Project Managers who are able to create projects & tasks
3. Project Member - to grant to Project Team Members who are not able to create projects or tasks, but will work on said tasks to finish projects
```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<module name="todo" title="Todo Module" xmlns="http://www.skyve.org/xml/module" xsi:schemaLocation="http://www.skyve.org/xml/module ../../schemas/module.xsd"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<homeRef>edit</homeRef>
	<homeDocument>Todo</homeDocument>
	
	<documents>
		<document ref="Project" />
		<document ref="Todo" />
		<document ref="Staff" />
		
		<document ref="User" moduleRef="admin" />
		<document ref="Contact" moduleRef="admin" />
	</documents>
	
	<roles>
		<role name="StaffManager">
			<description>Staff Manager - who are able to manage Staff</description>
			<privileges>
				<document permission="CRUDC" name="Staff" />
			</privileges>
		</role>
		<role name="ProjectManager">
			<description>Project Manager - who are able to manage and create tasks for projects.</description>
			<privileges>
				<document permission="CRUDC" name="Project" />
				<document permission="CRUDC" name="Todo" />
			</privileges>
		</role>
		<role name="ProjectMember">
			<description>Project Member - who are not able to create projects, tasks but will work with tasks to finish projects.</description>
			<privileges>
				<document permission="_RU_C" name="Project" />
				<document permission="_RU_C" name="Todo" />
			</privileges>
		</role>
	</roles>
</module>
```
#### Menus
The application menu is declared in terms of groups and items. A menu group is an expandable menu (submenu).
```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<module name="todo" title="Todo Module" xmlns="http://www.skyve.org/xml/module" xsi:schemaLocation="http://www.skyve.org/xml/module ../../schemas/module.xsd"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<homeRef>edit</homeRef>
	<homeDocument>Todo</homeDocument>
	
	<documents>
		<document ref="Project" />
		<document ref="Todo" />
		<document ref="Staff" />
		
		<document ref="User" moduleRef="admin" />
		<document ref="Contact" moduleRef="admin" />
	</documents>
	
	<roles>
		<role name="StaffManager">
			<description>Staff Manager - who are able to manage Staffs</description>
			<privileges>
				<document permission="CRUDC" name="Staff" />
			</privileges>
		</role>
		<role name="ProjectManager">
			<description>Project Manager - who are able to manage projects and create tasks for projects.</description>
			<privileges>
				<document permission="CRUDC" name="Project" />
				<document permission="CRUDC" name="Todo" />
			</privileges>
		</role>
		<role name="ProjectMember">
			<description>Project Member - who are not able to create project, tasks but will work with tasks to finish projects.</description>
			<privileges>
				<document permission="_RU_C" name="Project" />
				<document permission="_RU_C" name="Todo" />
			</privileges>
		</role>
	</roles>
	
	<menu>
		<list document="Staff" name="Staff">
			<role name="StaffManager" />
		</list>
		<list document="Project" name="Project">
			<role name="ProjectManager" />
			<role name="ProjectMember" />
		</list>
		<list document="Todo" name="To Do">
			<role name="ProjectManager" />
			<role name="ProjectMember" />
		</list>
	</menu>
</module>
```
![](doc_img_src/define%20menu.png)

### 7-3 - Define Documents
Skyve uses the term document to indicate the business-focused nature of application objects. You can find more details about Skyve Documents by following this link https://skyvers.github.io/skyve-dev-guide/documents/

Within the application file structure, each document is assigned a package. For example the `Staff` package will be assigned to the `Staff` document, the `Project` package will be assigned to the `Project` document... etc.

The `document` package includes declarations of actions, reports, views and the associated Bizlet file. The Bizlet file contains document-specific behaviours including overrides of default action behaviours and document bean lifecycle events (e.g. newInstance, preSave, etc.).

More info on Bizlets can be found at the following Skyve Developer Guide link: https://skyvers.github.io/skyve-dev-guide/bizlets/

In this tutorial we will define three Documents; Staff, Project and todo (task).
#### Staff Document
Inside our `todo` module, create a new `Staff` package.

![](doc_img_src/BuildToDoAppModule3Guide.PNG)

Inside the document package, the `document.xml` file defines aspects of a document, including(bold items are compulsory):
* **document metadata (name, description, aliases),**
* **bizKey (business key),**
* **attributes (fields & references),**
* conditions,
* constraints, and
* documentation (doc).

To define the `Staff` document we will need to create a `Staff.xml` file under the `Staff` document package with definition of `document metadata`, `bizkey`, and `attributes`
##### Document meta data
```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<document name="Staff"
				xmlns="http://www.skyve.org/xml/document"
				xsi:schemaLocation="http://www.skyve.org/xml/document ../../../schemas/document.xsd"
				xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<persistent name="Todo_Staff" />
	<singularAlias>Staff</singularAlias>
	<pluralAlias>Staffs</pluralAlias>
	<iconStyleClass>fa fa-users</iconStyleClass>
```
- `name` : Document name
- `persistent` : Name of document's database table
- `singularAlias`: Singular alias
- `pluralAlias`: Plural alias
- `iconStyleClass`: Document icon on the menu. [Skyve](https://skyve.org) uses `fontawesome` as an icons resource. You can look for any icon by following this link https://fontawesome.com/icons. Please take note of the `fontawesome` version to find correct icons.

In some cases, may you need to define your own custom icons. [Skyve](https://skyve.org) support 16 and 32 pixel icons and you can refer to them through the `admin` -> `contact` document.

##### bizKey
To enable the application to display references simply, each document must define a business key (bizKey) definition (similar to a Java toString() method for the document). The bizKey is the default representation of the entire document instance.

bizKey is defined like below:
```xml
<document name="Staff"
				xmlns="http://www.skyve.org/xml/document"
				xsi:schemaLocation="http://www.skyve.org/xml/document ../../../schemas/document.xsd"
				xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<persistent name="Todo_Staff" />
	<singularAlias>Staff</singularAlias>
	<pluralAlias>Staffs</pluralAlias>
	<iconStyleClass>fa fa-users</iconStyleClass>
	<bizKey expression="{user.contact.name}"/>
```
##### Attributes
Each document normally has multiple attributes which can be of different data types, and how it renders in the view can also be different. Please refer to this link https://skyvers.github.io/skyve-dev-guide/documents/#attributes to understand attribute types.

In this tutorial, the `Staff` document will have the attributes below:

| Attribute name | Data Type - length | Description                   |
|----------------|--------------------|-------------------------------|
| user           | User               | Associate User                |
| socialTitle    | Enum               | Social titles                 |
| dateOfBirth    | Date               | Date Of Birth                 |
| idCardNo       | String - 20        | ID Card Number                |
| issuedDate     | Date               | ID Card issued date           |
| expiryDate     | Date               | ID Card expiry date           |
| bio            | Text               | Brief description about staff |
| dept           | String - 50        | Departure                     |
| bu             | String - 50        | Business Unit                 |
| jobTitle       | String - 100       | Job Title                     |
| startDate      | Date               | Started Date                  |



To define the above attributes, follow this definition:

```xml
<attributes>
	<association name="user" type="aggregation" required="true">
		<displayName>User</displayName>
		<documentName>User</documentName>
	</association>
	
	<enum name="socialTitle">
		<displayName>Social Title</displayName>
		<defaultValue>mr</defaultValue>
		<values>
			<value code="mr" name="mr" description="Mr" />
			<value code="ms" name="ms" description="Ms" />
			<value code="mrs" name="mrs" description="Mrs" />
			<value code="dr" name="dr" description ="Dr"/>
		</values>
	</enum>
	<!-- Contact Info will be loaded from Contact Document -->
	
	<date name="dateOfBirth" required="true">
		<displayName>Date Of Birth</displayName>
	</date>
	
	<text name="idCardNo" required="true">
		<displayName>ID Card Number</displayName>
		<length>20</length>
	</text>
	
	<date name="issuedDate">
		<displayName>Issued Date</displayName>
	</date>
	
	<date name="expiredDate">
		<displayName>Expired Date</displayName>
	</date>
	
	<memo name="bio">
		<displayName>BIO</displayName>
		<description>Brief BIO info</description>
	</memo>
	
	<text name="dept">
		<displayName>Department</displayName>
		<length>50</length>
	</text>
	
	<text name="bu">
		<displayName>Business Unit</displayName>
		<length>50</length>
	</text>
	
	<text name="jobTitle">
		<displayName>Job Title</displayName>
		<length>100</length>
	</text>
	
	<date name="startDate">
		<displayName>Start Date</displayName>
	</date>	
	
</attributes>
```

#### Project document
After you are finished creating the `Staff` document, you should be familiar with document definition. Creating a `Project` document should be easy game for you.

Please go ahead and create the Project document with below attributes:

| Attribute name     | Data Type - length | Description         |
|--------------------|--------------------|---------------------|
| projectCode        | String - 50        | Project Code        |
| projectName        | String - 100       | Project Name        |
| projectDescription | Text               | Project Description |
| projectOwner       | Association - Contact            | Project Owner       |
| startDate          | Date               | Start Date          |
| endDate            | Date               | End Date            |
| projectManager     | Association - Staff              | Project Manager     |
| projectCoordinator | Association - Staff              | Project Coordinator |

```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<document name="Project"
				xmlns="http://www.skyve.org/xml/document"
				xsi:schemaLocation="http://www.skyve.org/xml/document ../../../schemas/document.xsd"
				xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<persistent name="Todo_Project" />
	<singularAlias>Project</singularAlias>
	<pluralAlias>Projects</pluralAlias>
	<iconStyleClass>fa fa-briefcase</iconStyleClass>
	<bizKey expression="{projectCode} - {projectName}"/>
	<attributes>
		<text name="projectCode" required="true">
			<displayName>Project Code</displayName>
			<length>50</length>
		</text>
		<text name="projectName" required="true">
			<displayName>Project Name</displayName>
			<length>100</length>
		</text>
		<memo name="projectDescription">
			<displayName>Project Description</displayName>
			<description>Project Description</description>
		</memo>
		<association type="aggregation" name="projectOwner" required="true">
			<displayName>Project Owner</displayName>
			<documentName>Contact</documentName>
		</association>
		<date name="startDate" required="true">
			<displayName>Start Date</displayName>
		</date>
		<date name="endDate" required="true">
			<displayName>End Date</displayName>
		</date>
		<association type="aggregation" name="projectManager" required="true">
			<displayName>Project Manager</displayName>
			<documentName>Staff</documentName>
		</association>
		<association type="aggregation" name="projectCoordinator" required="true">
			<displayName>Project Coordinator</displayName>
			<documentName>Staff</documentName>
		</association>		
	</attributes>
	
</document>
```
#### Todo Document
Next, we will go to create the `Todo` document. This document will present the tasks in a project for staff  to do.

In this tutorial, `Todo` document will have the following attributes:

| Attribute name   | Data Type - length | Description                        |
|------------------|--------------------|------------------------------------|
| taskID           | String - 20        | Task ID Number                     |
| priorityLevel    | Enum               | Priority Level of the task         |
| project          | Association - Project            | Project that the task belongs to       |
| createdBy        | Association - Staff              | The staff that created the task         |
| recordedDateTime | DateTime           | When task was recorded            |
| startDate        | DateTime           | When task was started              |
| targetDate       | DateTime           | When task was expected to be complete |
| actualStartDate  | DateTime           | Actual Start Date                  |
| actualFinishDate | DateTime           | Actual Finish Date                 |
| taskStatus       | Enum               | Status of task                     |
| Task Description       | Text               | Task Description                     |
| staff            | Association - Staff              | Who is involved in the task           |

```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<document name="Todo"
				xmlns="http://www.skyve.org/xml/document"
				xsi:schemaLocation="http://www.skyve.org/xml/document ../../../schemas/document.xsd"
				xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<persistent name="Todo_Todo" />
	<singularAlias>Todo</singularAlias>
	<pluralAlias>Todo</pluralAlias>
	<iconStyleClass>fa fa-tasks</iconStyleClass>
	<bizKey expression="{taskID}"/>
	
	<attributes>
		<text name="taskID" required="true">
			<displayName>Task ID</displayName>
			<length>20</length>
		</text>
		<enum name="priorityLevel">
			<displayName>Priority Level</displayName>
			<defaultValue>medium</defaultValue>
			<values>
				<value code="med" name="medium" description="Medium"/>
				<value code="urg" name="urg" description="Urgent"/>
				<value code="low" name="low" description="Low Priority"/>
			</values>
		</enum>
		<association type="aggregation" name="project" required="true">
			<displayName>Project</displayName>
			<documentName>Project</documentName>
		</association>
		<association type="aggregation" name="createdBy" required="true">
			<displayName>Created By</displayName>
			<documentName>Staff</documentName>
		</association>
		<dateTime name="recordedDateTime" required="true">
			<displayName>Recorded Date Time</displayName>
		</dateTime>
		<dateTime name="startDate">
			<displayName>Start Date</displayName>
		</dateTime>
		<dateTime name="targetDate">
			<displayName>Target Date</displayName>
		</dateTime>
		<dateTime name="actualStartDate">
			<displayName>Actual Start Date</displayName>
		</dateTime>
		<dateTime name="actualFinishDate">
			<displayName>Actual Finish Date</displayName>
		</dateTime>
		<text name="taskDescription" required="true">
			<displayName>Task Description</displayName>
			<length>500</length>
		</text>
		<enum name="taskStatus">
			<displayName>Task Status</displayName>
			<defaultValue>defined</defaultValue>
			<values>
				<value code="defined" name="defined" description="Defined"/>
				<value code="pending" name="pending" description="Pending" />
				<value code="assign" name="assigned" description="Assigned"/>
				<value code="inprogress" name="inprogress" description="In Progress" />
				<value code="review" name="review" description="Review" />
				<value code="uat" name="uat" description="UAT"/>
				<value code="kiv" name="kiv" description="KIV"/>
				<value code="completed" name="completed" description="Completed"/>
			</values>
		</enum>
		<association type="aggregation" name="assignTo" required="true">
			<displayName>Assign To</displayName>
			<documentName>Staff</documentName>
		</association>
	</attributes>
</document>
```

Now, just one final step before generating our domain!

You will need to locate your customerName.xml file, customerName will be whatever you set your Customer Name as when you first built your project in the [Skyve Project Creator](https://foundry.skyve.org/foundry/project.xhtml).

In the case of this tutorial, the Customer Name is 'tutorial'.

Once you have located your customerName.xml file, you'll need to include your todo module in your project.

![](doc_img_src/ConfigureCustomerxXML1Guide.PNG)

Definitions of our documents is now complete. Next we will need to generate domain classes from our defined documents.

### 7-4 - Generate domain
To work with our defined documents we must run the `generate domain` command.

Because we have already run `generate domain` previously, this time it will be faster.

Click to the button to the right of the `Run as` button.
![](doc_img_src/GenerateDomain1Guide.PNG)

Then choose `todoApp - Generate Domain`.
![](doc_img_src/GenerateDomain2Guide.PNG)

### 7-5 - Start server and have a look at the Todo Module
After `Generate Domain` runs successfully, we will start the server to see our `Todo App` result.

After the server runs successfully, open your web browser and access the address [https://localhost:8080/todoApp](https://localhost:8080/todoApp) and log-in with your `setup` user info.

To access the `Todo` module links you will need to set `roles` for user.
For example, I go to set full `roles` for my `setup` user.

1. Go to the `User` link on `Security Admin`, then click setup user
![](doc_img_src/user-setup.png)

2. Open the `Roles` tab and click the `Add` button
![](doc_img_src/role%20add.png)

3. Scroll down to the very bottom, you will see our `todo` roles. Choose which role you want to assign to a user. In this case I assign all related `todo` roles for my `setup` user. We need to select roles one by one then click the `Zoom Out` button and click `Add` button and repeat until all `roles` are assigned properly
![](doc_img_src/todo%20roles.png)

4. Once done with `roles` setup, click `Save` to apply your changes
![](doc_img_src/saveroles.png)

After finishing the `roles` setup, you will need to re-login to see the effect.

**Ta-da!! Surprise!!**

Now on the left menu we see our `todo` module and its links.

![](doc_img_src/todomenu.png)

>***To take note:***

> When you set up `roles` for a `user`, you worked with a very important concept in [Skyve](https://skyve.org) which we call `Zoom`. To get more details about this concept, please spend two minutes to read from this link https://skyvers.github.io/skyve-dev-guide/concepts/#zoom

# Enhancements
## 8 - List View
Most applications present data in both list and detail views. Skyve assumes this fact and provides rich features for each type of view.

Typically, users of applications begin with a list view of all document instances and then select a document instance to edit. This pattern of behavior is assumed in Skyve.

Skyve will provide generic/default list and edit views unless specific definitions are provided in the application metadata by the developer. This supports rapid prototyping of the domain model and gives the developer an ability to begin interacting with the application at an early stage.

List views are based on queries which generally include only key document attributes for searching and review. Each row of the list corresponds to a document instance however the list may represent data from related documents within the document’s object hierarchy.

To learn more about queries, please follow this link https://skyvers.github.io/skyve-dev-guide/modules/#queries

### 8-1 - Staff List
![](doc_img_src/staff%20list.png)

Lets see our `Staff` list. Currently, our `Staff` list shows all the information which we defined in the document's attributes section. However, since the `Staff` document is related to `Contact` document, we expect to show some contact information in the `Staff` list too. Let's say we will show `Staff Image`, `Staff Name`, `Staff Mobile Phone Number`, and we also will hide some information from Staff list, for example `Issued Date`, `Expired Date`, `BIO`.

Because we did not define the query for `Staff document` yet, it is showing all columns by default. So we have to open `todo.xml` file to declare the query for `Staff`.

Right after the `Menu` declaration, we will declare `Queries` like below:
```xml
<queries>
	<query documentName="Staff" name="qStaff">
		<description>All Staff</description>
		<columns>
			<content display="thumbnail" binding="user.contact.image" pixelHeight="45" pixelWidth="45" />
			<column binding="user.contact.name" sortOrder="ascending" />
			<column binding="user.contact.mobile" sortOrder="ascending" />
			<column binding="dateOfBirth" sortOrder="ascending" />
			<column binding="idCardNo" sortOrder="ascending" />
			<column binding="dept" sortOrder="ascending" />
			<column binding="bu" sortOrder="ascending" />
			<column binding="jobTitle" sortOrder="ascending" />
			<column binding="startDate" sortOrder="ascending" />
		</columns>
	</query>
</queries>
```

Then you will need to provide `defaultQueryName` attribute to your `Staff` document in `todo.xml`, like below:

```xml
<documents>
	<document ref="Project" />
	<document ref="Todo" />
	<document ref="Staff" defaultQueryName="qStaff"/>
	
	<document ref="User" moduleRef="admin" />
	<document ref="Contact" moduleRef="admin" />
</documents>
```

To apply the change, stop the `WildFly` server and run the `Generate Domain` command, then start the `WildFly` Server again.

Ta-da!!! Amazing!!!

This is the result after our changes, looks nice right?!
![](doc_img_src/stafflist%20after%20done.png)

### 8-2 - Project List
![](doc_img_src/project%20list.png)

As you can see our Project list needs some enhancement too. We will alter it to show `Project Owner`, `Project Manager` and `Project Coordinator` as well as hide the `Project Description` from our `Project List`.

You may spend few minutes to complete it by yourself, then compare with my declaration.

```xml
<query documentName="Project" name="qProject">
	<description>All Project</description>
	<columns>
		<column binding="projectCode" sortOrder="ascending" />
		<column binding="projectName" />
		<column binding="projectDescription" />
		<column binding="projectOwner.name" displayName="Project Owner"/>
		<column binding="startDate" />
		<column binding="endDate" />
		<column binding="projectManager.user.contact.name" displayName="Project Manager" />
		<column binding="projectCoordinator.user.contact.name" displayName="Project Coordinator"/>
	</columns>
</query>
```

![](doc_img_src/project%20list%20after%20done.png)

### 8-3 - Todo List 
![](doc_img_src/todolist.png)

As you can see our `Todo List` is not showing `Created By` and `Assign To` columns yet, and we also do not want to display the `Actual Start Date` and `Actual Finish Date` columns.

Give it a try! You can absolutely complete it by yourself!

Once you are done with your query declaration, you can compare with my query below:

```xml
<query documentName="Todo" name="qTodo">
	<description>All Todo</description>
	<columns>
		<column binding="taskID" sortOrder="ascending" />
		<column binding="priorityLevel" />
		<column binding="project.projectCode" />
		<column binding="createdBy.user.contact.name" displayName="Created By"/>
		<column binding="recordedDateTime" />
		<column binding="startDate" />
		<column binding="targetDate" />
		<column binding="taskStatus" />
		<column binding="taskDescription" />
		<column binding="assignTo.user.contact.name" displayName="Assign To"/>
	</columns>
</query>
```

And this is the `Todo List` which we have
![](doc_img_src/todolist%20after.png)

***Ta-da!!!*** 

We have already completed `List Main` for our `Todo` module. We will now cover ***Views, widgets and layout*** in the next section

## 9 - Views, widgets and layout
In this section we will override the default detail view which is generated by Skyve.

### 9-1 - Staff Edit View
Skyve provides us with a very useful function to create default `edit view` based on our document attributes and attributes type, the default widget will be applied for each attribute type.

So to create our Staff `edit view`, we will go through the following steps:

1. Create `edit view`
2. Customize `edit view` to match our requirements.

#### Create edit view
1. Right click to your `Project Name` in the `Project Explorer` window -> Run As -> Run Configurations
![](doc_img_src/staffcreateeditview.png)
2. The `Run Configuration` window appears, looking at `Maven Build` then click `todoApp - Generate Edit View` option, then click the `Run` button.
![](doc_img_src/runstaffeditview.png)
3. Take a look on the `Console` window. It will ask you for `module name` and `document name`. I will input `todo` as the `module name` and `Staff` as the `document name`.
![](doc_img_src/entertodoandstaff.png)

It will run and create an `edit view` for us automatically.

Now, take a look in your `Staff` package, you will see a `views` package was created. Expand the `views` package and we will see the `generatedEdit.xml` file.
![](doc_img_src/staffGeneratedEditXml.png)

Now we will need to rename the xml file to `edit.xml`.

A-ha, now we will add something to the edit view for testing purposes.

I will add "This is my edit view" to the view for testing, like below:
![](doc_img_src/thisIsMyEditView.png)

***Note that: After generating each view, you will need to re-deploy your application for the changes to take affect. After re-deploying any change on the view, except for condition, we do not need to Run Configuration and re-deploy application. Just change and refresh your browser, it will take effect immediately.***

After refreshing the browser we will see the text we have added to `edit view` like below:
![](doc_img_src/thisIsMyEditViewResult.png)

Ta-da!!! It works like a charm!!!

#### Enhance edit view
In the previous step we generated an `edit view` by using the `Generate Edit View` function. Now we will enhance our `edit view` to make it more visually appealing.

As of now, Staff attributes show one by one, from top to bottom. We will enhance the view by:
1. Retrieving and showing more contact information: Name, Email, Mobile Number, and Contact Image.
2. Group related information together: Contact Info, Personal Info, Work Info.

We will plan to split our view into 2 sections: `left` and `right`. We will show `Staff information` on the left side and the `Staff Image` will be shown on the right part.

To do that, we will need to understand about Skyve Containers - https://skyvers.github.io/skyve-dev-guide/views/#containers

After reading through the Skyve Containers document, you may have already guessed how to split our view into 2 parts.

Yes, `hbox` container will help us on this.

We will try and test our `hbox` to see how it works.
![](doc_img_src/staff%20editview%20leftandside.png)

I will explain further:
- Line 3: We define a `hbox` container. `border=true` allows us show the border for our horizontal boxes.
- Line 5: We define `vbox` to hold our Staff data later. `vbox` has `responsiveWidth` and `perscentageWidth` to allow us to set width. `percentageWidth` can be set from 1 to 100, and will be used on `desktop` screens, while `responsiveWidth` can be set from 1 to 12 and will be used for responsive screens.
- Line 6: We define a form. Forms will be used to hold Data Fields.
- Line 7 and line 8: we define `column`. To make it responsive we should not declare width for the last column.
- Line 10: We define a `row`.
- Line 11 to Line 13 define an `item`. By default, an item will take 2 columns to display, 1 for label and another one for `input` data.

And after the above definition, we will have the resultant screen below.
![](doc_img_src/staff%20leftandrightside.png).

Now we will move the Contact Image on the right hand side and all Staff Data to the left hand side.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="edit" title="Staff" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
	<hbox border="true">
		<!-- left side -->
		<vbox responsiveWidth="8" percentageWidth="60">
 			<form>
		        <column percentageWidth="30" responsiveWidth="4"/>
		        <column/>
		        
		        <row>
		            <item>
		                <default binding="user"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="socialTitle"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="dateOfBirth"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="idCardNo"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="issuedDate"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="expiredDate"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="bio"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="dept"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="bu"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="jobTitle"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="startDate"/>
		            </item>
		        </row>
			</form>		      
		</vbox>
		
		<!-- right side -->
		<vbox responsiveWidth="4" percentageWidth="40">
			<form>
		        <column percentageWidth="20" responsiveWidth="1" />
				<column />
				<row>
					<item>
						<spacer />
					</item>
					<item showLabel="false">
						<contentImage binding="user.contact.image" pixelWidth="200" pixelHeight="200" />
					</item>
				</row>
			</form>
		</vbox>
	</hbox>
    
    <actions>
        <defaults/>
    </actions>
    <newParameters/>
</view>
```
After we're finished with the above definition, we will have a view like this:
![](doc_img_src/staffeditview1.png)

It looks better than before right? However there are still some improvements to be made here.

We also want to get contact info(Name, Email, Phone Number) from `Contacts` to show here.

To do that, right after Social Title, we add the code below:
```xml
<row>
    <item>
        <default binding="user.contact.name"/>
    </item>
</row>

<row>
    <item>
        <default binding="user.contact.email1"/>
    </item>
</row>

<row>
    <item>
        <default binding="user.contact.mobile"/>
    </item>
</row>
```

And we will get the result below:
![](doc_img_src/staffeditview2.png)

Next, we will group related information together to make it easier to manage.

The easiest way is to use the `border` and `borderTitle` attributes of the `Form` container.

Note that: `Form` just plays a role as a container, which have rows and columns for us to place attributes, not like a `HTML Form`. So feel free to have more than one form in your view. It will help you to manage the look of the view easier.

So for this case, I will have 3 forms, one for `Contact Info`, one for `Personal Info`, and another one for `Work Info`.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="edit" title="Staff" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
	<hbox border="true">
		<!-- left side -->
		<vbox responsiveWidth="8" percentageWidth="60">
 			<form border="true" borderTitle="Contact Info">
		        <column percentageWidth="30" responsiveWidth="4"/>
		        <column/>
		        
		        <row>
		            <item>
		                <default binding="user"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="socialTitle"/>
		            </item>
		        </row>
		        
		        <row>
		            <item>
		                <default binding="user.contact.name"/>
		            </item>
		        </row>
		        
		        <row>
		            <item>
		                <default binding="user.contact.email1"/>
		            </item>
		        </row>
		        
		        <row>
		            <item>
		                <default binding="user.contact.mobile"/>
		            </item>
		        </row>
	        </form>
	        
	        <form border="true" borderTitle="Personal Info">
		        <column percentageWidth="30" responsiveWidth="4"/>
		        <column/>
		        <row>
		            <item>
		                <default binding="dateOfBirth"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="idCardNo"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="issuedDate"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="expiredDate"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="bio"/>
		            </item>
		        </row>
	        </form>
	        
	        <form border="true" borderTitle="Work Info">
		        <column percentageWidth="30" responsiveWidth="4"/>
		        <column/>
		        <row>
		            <item>
		                <default binding="dept"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="bu"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="jobTitle"/>
		            </item>
		        </row>
		        <row>
		            <item>
		                <default binding="startDate"/>
		            </item>
		        </row>
			</form>		      
		</vbox>
		
		<!-- right side -->
		<vbox responsiveWidth="4" percentageWidth="40">
			<form>
		        <column percentageWidth="20" responsiveWidth="1" />
				<column />
				<row>
					<item>
						<spacer />
					</item>
					<item showLabel="false">
						<contentImage binding="user.contact.image" pixelWidth="200" pixelHeight="200" />
					</item>
				</row>
			</form>
		</vbox>
	</hbox>
    
    <actions>
        <defaults/>
    </actions>
    <newParameters/>
</view>
```
After finishing the above definition, we have a view like below:
![](doc_img_src/staffeditview3.png)

Hmm, looks like the right side is too empty when we only have the staff image. So we will move the `bio` to the right hand side to see how it looks.

I guess you know how to do it already right?

So after we move bio from `Personal Info` to the right hand side section. We will have the view below:
![](doc_img_src/staffeditview4.png)

We can say that we have already made a nice view for Staff. However, I also want to introduce `View Components` to you.

So, what is `View Components`?

Lets imagine that your view is very complex, lots of sections and these sections can be reused in different views.
Skyve allows for reuse of view sections via the `component widget`.

To demonstrate how to re-use components, we will split our view into four components:
1. Contact Info
2. Personal Info
3. Work Info
4. Photo and Bio

The view component must be declared according to the convention, with the file name matching the declared name. The component widget then refers to that name, with the addition of a module and document (if the referenced component declaration resides in another document package).

##### Contact Info component
In the Staff > views package, create new `_contactInfo.xml` file with below content:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="_contactInfo" title="Staff Contact Info" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
	<form border="true" borderTitle="Contact Info">
        <column percentageWidth="30" responsiveWidth="4"/>
        <column/>
        
        <row>
            <item>
                <default binding="user"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="socialTitle"/>
            </item>
        </row>
        
        <row>
            <item>
                <default binding="user.contact.name"/>
            </item>
        </row>
        
        <row>
            <item>
                <default binding="user.contact.email1"/>
            </item>
        </row>
        
        <row>
            <item>
                <default binding="user.contact.mobile"/>
            </item>
        </row>
       </form>
</view>
```

##### Personal Info Component
In the Staff -> views package, create new `_personalInfo.xml` file with below content:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="_personalInfo" title="Staff Personal Info" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
	<form border="true" borderTitle="Personal Info">
    	<column percentageWidth="30" responsiveWidth="4"/>
		<column/>
		<row>
		    <item>
		        <default binding="dateOfBirth"/>
		    </item>
		</row>
		<row>
		    <item>
		        <default binding="idCardNo"/>
		    </item>
		</row>
		<row>
		    <item>
		        <default binding="issuedDate"/>
		    </item>
		</row>
		<row>
		    <item>
		        <default binding="expiredDate"/>
		    </item>
		</row>
     </form>
</view>
```

##### Work Info Component
In the Staff -> views package, create new `_workInfo.xml` file with below content:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="_workInfo" title="Staff Work Info" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
	<form border="true" borderTitle="Work Info">
        <column percentageWidth="30" responsiveWidth="4"/>
        <column/>
        <row>
            <item>
                <default binding="dept"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="bu"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="jobTitle"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="startDate"/>
            </item>
        </row>
	</form>
</view>
```
##### Photo and Bio Component
In the Staff -> views package, create new `_photoBio.xml` file with below content:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="_photoBio" title="Staff Photo and Bio" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
	<form>
        <column percentageWidth="20" responsiveWidth="1" />
		<column />
		<row>
			<item>
				<spacer />
			</item>
			<item showLabel="false">
				<contentImage binding="user.contact.image" pixelWidth="200" pixelHeight="200" />
			</item>
		</row>
		
		<row>
			<item>
				<spacer />
			</item>
            	<item showLabel="false">
                	<textArea  binding="bio"></textArea>
           	 </item>
        	</row>
	</form>
</view>
```
##### Combine together
After done with component creation, we will go to use it on our `edit` view.

Change `edit.xml` view like below:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="edit" title="Staff" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
	<hbox border="true">
		<!-- left side -->
		<vbox responsiveWidth="8" percentageWidth="60">
 			<component name="_contactInfo" />
 			<component name="_personalInfo" />
 			<component name="_workInfo" />      
		</vbox>
		
		<!-- right side -->
		<vbox responsiveWidth="4" percentageWidth="40">
			<component name="_photoBio"/>
		</vbox>
	</hbox>
    
    <actions>
        <defaults/>
    </actions>
    <newParameters/>
</view>
```

We will re-deploy our application to take affect.
After re-deployment and re-login to the system. We will have the same view as our original before:
![](doc_img_src/staffeditview5.png)

In the next section we will reuse our view component to create a different layout for desktop screens.
##### Create edit view for desktop
Desktop provides a good end user experience, and there are some features which are only available on desktop but not on other devices such as tablet, or mobile.

To demonstrate for desktop view, we will:
1. Create view for desktop
2. Change the layout to make left and right parts the same width
3. Add Staff location which uses `Geometry` data.

###### Create edit view
- Create a new package named `desktop` inside the `views` package of the Staff Document.
- Copy `edit.xml` file from `views` package to `views.desktop` package.
- Re-deploy the application to take effect.

###### Change the layout for desktop view
We will change the layout of desktop view to make left and right sections have the same width.
```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="edit" title="Staff" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
	<hbox border="true">
		<!-- left side -->
		<vbox responsiveWidth="6" percentageWidth="50">
 			<component name="_contactInfo" />
 			<component name="_personalInfo" />
 			<component name="_workInfo" />      
		</vbox>
		
		<!-- right side -->
		<vbox responsiveWidth="6" percentageWidth="50">
			<component name="_photoBio"/>
		</vbox>
	</hbox>
    
    <actions>
        <defaults/>
    </actions>
    <newParameters/>
</view>
```

Login to the application.
Then switch to desktop view by click to the `Switch` button on the top right corner. 
![](doc_img_src/switch%20button.png)

Go to `Staff`, then we will see the difference between desktop view and our normal view.
![](doc_img_src/staffeditview6.png)


###### Add Staff location which uses `Geometry` data
Skyve provides a Google maps API by default, however it is your responsibility to consider usage, licencing and billing implications when used in your application. Refer to [Google](https://cloud.google.com/maps-platform/terms/) terms to find out more.

Skyve applications can take advantage of other map APIs (for example; Leaflet, OpenStreetMap .etc) however these APIs are not included in the open-source Skyve distribution. For assistance, contact us at skyve.org to discuss detailed steps for other integration options.

In this section we will use `Geometry` with Google Maps. So you will need to have a `Google Map API V3 key`. You can follow this link https://developers.google.com/maps/documentation/javascript/get-api-key to get one.

After you have the key, you will need to set it in the APIs section of `todoApp.json` (hopefully you still remember your key ;) )

In the `Servers` window, right click on your Wildfly server and choose `Show in`, then select `File Browser`.

![](doc_img_src/wfshowinbrowser.png)

Locate the `todoApp.json` file and open it in your code editor.

Look for 'API Settings', and set your `googleMapsV3Key` with the `key` you have.

![](doc_img_src/googlemapapi.png)

Now, we will add `Staff Location` to our `Staff Document`.

```xml
<geometry name='staffLocation'>
	<displayName>Staff Location</displayName>
</geometry>
```

Add this definition right after the bio definition.

After adding the `Staff Location` attribute, we must run `Generate Domain`.

Once, the `Generate Domain` command runs successfully, we will amend our views.

`Geometry` is not yet supported on responsive mode yet, so in this view, we will show a text to instruct user to go to `desktop` mode to use `Geometry` feature.


We will add Staff Location to the right side of the screen.

`Staff Responsive View`.

```xml
<!-- right side -->
<vbox responsiveWidth="4" percentageWidth="40">
	<component name="_photoBio"/>
	
	<form>
        <column percentageWidth="20" responsiveWidth="1" />
	<column />
        
        <row>
            <item>
		<spacer />
	    </item>
            <item showLabel="false">
                <blurb>To set Staff Location, please switch to Desktop Mode</blurb>
            </item>
        </row>
   	</form>
</vbox>
```

![](doc_img_src/staffeditview7.png)

`Staff Desktop View`

```xml
<!-- right side -->
<vbox responsiveWidth="6" percentageWidth="50">
	<component name="_photoBio"/>
	
	<form>
        <column percentageWidth="20" responsiveWidth="1" />
	<column />     
        
        <row>
            <item>
                <default binding="staffLocation"/>
            </item>
        </row>
    </form>
</vbox>
```

![](doc_img_src/staffeditview8.png)

You can click to the right icon of `Staff Location` to set `Staff Location`.

### 9-2 -  Project Edit View

In the previous section you explore and practice how to create an `edit view` and customize it to meet project requirements. Now it should be easier for you to create an `edit view` for your `Project` document right?

Lets demonstrate that our `project edit view` may look like below:

![](doc_img_src/projecteditview.png)

It includes 3 `components`:
- Project Info: to show project information.
- Project Owner Info: to show project owner information.
- Project Operator: to show project operator information.

Here are some guidelines to help you finish this edit view by your self.
1. Run `Generate edit view` command to generate `Project edit view`
2. Create `view components` for each section
3. Combine `view components` together.
4. Run `Generate Domain` command and re-deploy the application.
5. Adjust your view if required.

You may choose to stop reading through this tutorial for 10 to 20 minutes in order to try to complete it by yourself, and then after you are done you can compare it with our work.

#### Project Edit View Solution
##### Project Info Component
```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="_projectInfo" title="Project" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
    <form border="true" borderTitle="Project Info">
        <column percentageWidth="30" responsiveWidth="4"/>
        <column/>
        <row>
            <item>
                <default binding="projectCode"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="projectName"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="projectDescription"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="startDate"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="endDate"/>
            </item>
        </row>
	</form>
</view>
```
##### Project Owner Info Component
```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="_projectOwnerInfo" title="Project" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
    <form border="true" borderTitle="Project Owner Info">
        <column percentageWidth="30" responsiveWidth="4"/>
        <column/>       
        <row>
        	<item>
                	<default binding="projectOwner"/>
        	</item>
        </row>
        
        <row>
        	<item>
        		<default binding="projectOwner.name"/>
        	</item>
        </row>
        <row>
        	<item>
        		<default binding="projectOwner.email1"/>
        	</item>
        </row>
        <row>
        	<item>
        		<default binding="projectOwner.mobile"/>
        	</item>
        </row>
        
        <row>
        	<item>
			<spacer />
		</item>
		<item showLabel="false">
			<contentImage binding="projectOwner.image" pixelWidth="200" pixelHeight="200" />
		</item>
        </row>
    </form>
</view>
```
#### Project Operator Component
```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="_projectOperator" title="Project" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
    <form border="true" borderTitle="Project Operator">
        <column percentageWidth="30" responsiveWidth="4"/>
        <column/>
        
        <row>
        	<item>
                	<default binding="projectManager"/>
        	</item>
        </row>
        <row>
        	<item>
                	<default binding="projectManager.user.contact.email1"/>
        	</item>
        </row>
        <row>
        	<item>
                	<default binding="projectManager.user.contact.mobile"/>
        	</item>
        </row>
        <row>
        	<item>
			<spacer />
		</item>
		<item showLabel="false">
			<contentImage binding="projectManager.user.contact.image" pixelWidth="200" pixelHeight="200" />
		</item>
        </row>
        <row>
        	<item>
                	<default binding="projectCoordinator"/>
        	</item>
        </row>
        <row>
        	<item>
            		<default binding="projectCoordinator.user.contact.email1"/>
        	</item>
        </row>
        <row>
           	<item>
                	<default binding="projectCoordinator.user.contact.mobile"/>
            	</item>
        </row>
        <row>
        	<item>
			<spacer />
		</item>
			<item showLabel="false">
			<contentImage binding="projectCoordinator.user.contact.image" pixelWidth="200" pixelHeight="200" />
		</item>
        </row>
        <row>
        	<item colspan="2">
			<spacer />
		</item>
        </row>
    </form>
</view>
```

#### Combine components in edit view
```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="edit" title="Project" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
    <hbox border="true">
    	<vbox responsiveWidth="6" percentageWidth="50">
    		<component name="_projectInfo" />
    		<component name="_projectOwnerInfo" />
    	</vbox>
    	<vbox responsiveWidth="6" percentageWidth="50">
    		<component name="_projectOperator" />
    	</vbox>
    </hbox>
    <actions>
        <defaults/>
    </actions>
    <newParameters/>
</view>
```

### 9-3 - Todo Edit View
In the previous section we finished the `Project Edit view`. We will now create our final view for `Todo Edit view`.

`Todo Edit view` will have an interface like below:
![](doc_img_src/todoeditview.png)

It includes 2 parts:
1. General Information
2. Process

You can scroll up a bit to read the guideline on how to create `Project Edit view` and apply to create `Todo edit view`.

We suggest you stop reading for a while and attempt your `Todo Edit view` before comparing with our definition below.

#### General Information Component

```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="_generalInfo" title="Todo" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
    <form border="true" borderTitle="General Info">
        <column percentageWidth="40" responsiveWidth="5"/>
        <column/>
        <row>
            <item>
                <default binding="taskID"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="priorityLevel"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="project"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="createdBy"/>
            </item>
        </row>        
        <row>
            <item>
                <default binding="taskDescription"/>
            </item>
        </row>
        <row>
            <item colspan="2">
                <spacer />
            </item>
        </row>
        
    </form>
</view>
```

#### Process Component
```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="_process" title="Todo" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
    <form border="true" borderTitle="Todo Process">
        <column percentageWidth="40" responsiveWidth="5"/>
        <column/>
        
        <row>
            <item>
                <default binding="assignTo"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="recordedDateTime"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="startDate"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="targetDate"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="taskStatus"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="actualStartDate"/>
            </item>
        </row>
        <row>
            <item>
                <default binding="actualFinishDate"/>
            </item>
        </row>
    </form>
</view>
```

#### Combine components in edit view
```xml
<?xml version="1.0" encoding="UTF-8"?>
<view xmlns="http://www.skyve.org/xml/view" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="edit" title="Todo" xsi:schemaLocation="http://www.skyve.org/xml/view ../../../../schemas/view.xsd">
    <hbox>
    	<vbox responsiveWidth="6" percentageWidth="50">
    		<component name="_generalInfo" />
    	</vbox>
    	
    	<vbox responsiveWidth="6" percentageWidth="50">
    		<component name="_process" />
    	</vbox>
    </hbox>
    <actions>
        <defaults/>
    </actions>
    <newParameters/>
</view>
```

We've now finished our views. In the next section we will cover some advanced concepts such as condition, action and event handler. To apply these concepts, our Application will become more logical, aiming for a high production grade of an application.

### 9-4 Displaying user information after selecting who to assign a todo process to

In the todo document, when selecting which user to assign the task to, we may want to see some of the information about the user we have selected.
This can be achieved through further usage of conditions. In particular, we can have a condition to determine the visibility of some specified attributes on the screen. 
To begin with, we define the condition in the `Todo.xml`. Similarly to the before example, we want to add the conditions definition after the attributes definitions. We will define this condition as follows:

```xml
<conditions>
	<condition name="assigned">
		<expression>assignTo != null</expression>
	</condition>
</conditions>
```

This condition will check if a user has been selected for the assignTo attribute.
Now we need to change the assignTo binding such that it will update the attributes on the selection of the user. This is done as follows in the `_process.xml`:

```xml
<row>
       <item>
		<lookupDescription binding="assignTo" descriptionBinding="bizKey">
               		<onPickedHandlers>
               			<rerender clientValidation="false" />
               		</onPickedHandlers>
                </lookupDescription>
       </item>
</row>
```

Next, we need to define which elements of the user's information we want to show by editing the `_process.xml` further. To do this, we need to add bindings for the attributes to be displayed within the todo view below the previous section. In this case we will display the name, email and mobile number of the user that is selected like below:

```xml
<row>
        <item>
       		<textField binding="assignTo.name" visible="assigned" editable="false"/>
       	</item>
</row>
<row>
       	<item>
      		<textField binding="assignTo.email1" visible="assigned" editable="false"/>
       	</item>
</row>
<row>
       	<item>
       		<textField binding="assignTo.mobile" visible="assigned" editable="false"/>
       	</item>
</row>
```

Now, when we select a user to assign the task to in the todo document, it will display the name, email and mobile number of the corresponding user selected as shown in the photo below

![](doc_img_src/ShowMore.PNG)


## 10 - Advanced Enhancements
In this section we will update our `Todo` application to make it more powerful and closer to the production grade of an application.

We will go through and apply some concepts such as `condition`, `filter`, and `action` and we also will touch on the `bizlet and extension class` - `Bizlet`, which is a class related to a document which extends default bean behaviours.


### 10-1 - Staff

Firstly we will enhance the `Staff` document to see how we can apply the above concepts to our document.

1. Add `My Staff Information` menu item to `Project Member`
2. Only allow `Staff Manager` to select `User`.
3. When Staff Manager selects User from dropdown box, it will automatically update contact information and contact image.
4. `User` dropbox should not show user which associates with another `Staff`
5. Only allow `Staff Manager` to update `Work Info` data
6. Allow `Project Member` to update `Contact Info` and `Personal Info` only.

### 10-2 - Add `My Staff Information` menu item.
I will login to the application by using a `Project Member` user account.
I can find which users are under the `Project Member` group by logging into the application through an admin account and opening `Admin > Security Admin > Groups` and then opening the `Project Member` group.

![](doc_img_src/projectmembergroup.png)

There is a `Users in Group` tab which shows all users included in this group.

So I will re-login with one of these users accounts.

![](doc_img_src/projectmemberlogin.png)

Please take a look at `Todo Module`. We don't want people in `Project Member` to see the details of `Project` because there is `Project Owner` information that should not be visible to a `Project Member User`.

Open `todo.xml` and locate the `menu` definition section.

```xml
<menu>
	<list document="Staff" name="Staff">
		<role name="StaffManager" />
	</list>
	<list document="Project" name="Project">
		<role name="ProjectManager" />
		<role name="ProjectMember" />
	</list>
	<list document="Todo" name="To Do">
		<role name="ProjectManager" />
		<role name="ProjectMember" />
	</list>
</menu>
```

We will remove the role `ProjectMember` from `Project`

```xml
<menu>
	<list document="Staff" name="Staff">
		<role name="StaffManager" />
	</list>
	<list document="Project" name="Project">
		<role name="ProjectManager" />
	</list>
	<list document="Todo" name="To Do">
		<role name="ProjectManager" />
		<role name="ProjectMember" />
	</list>
</menu>
```

We also create `My Staff Information` for `Project Member` so they can see and update their information from here.
```xml
<menu>
	<list document="Staff" name="Staff">
		<role name="StaffManager" />
	</list>
	<edit document="Staff" name="My Staff Information">
		<role name="ProjectMember" />
	</edit>
	<list document="Project" name="Project">
		<role name="ProjectManager" />
	</list>
	<list document="Todo" name="To Do">
		<role name="ProjectManager" />
		<role name="ProjectMember" />
	</list>
</menu>
```

Lets say we want to allow a `Project Member` to create or update their Staff Information, however their Staff Information was created by a `Staff Manager` previously. So in this case we will need to allow `Project Member` to `Create`,`Read`,`Update` their Staff document on Customer scope. But we will restrict it to show their own staff record only. To do this, we replace the previous role definition of `Project Member` with the below code

```xml
<role name="ProjectMember">
	<description>Project Member - who are not able to create project, tasks but will work with tasks to finish projects.</description>
	<privileges>
		<document permission="_RU_C" name="Todo" />
		<document permission="CRU_C" name="Staff" />
	</privileges>
</role>
```

After completing the above tasks, we will need to run `Generate Domain` and re-deploy our application.

Now, we will login as a `Project Member` to see the change.

![](doc_img_src/mystaffinfomenu.png)

However, it is not quite finished yet, when you click the menu link, it will show a new blank `Staff` document.

![](doc_img_src/staffeditview9.png)

We will have to change a little bit here to load in the correct user data. When loading `My Staff Information`, we will check whether any `Staff` are associated with the current user or not, if there is we will load it.

To do the above we will need to create a `Bizlet` for the `Staff` document and override the `newInstance` method.

To learn more about `Bizlet`, you can have a read at https://skyvers.github.io/skyve-dev-guide/bizlets/

Now, let me to show you how we can create `StaffBizlet` to customize the document as we want.

Right-click to the `Staff` package and select `New`, then select `Class` in the sub-menu.

The new Class window will appear like below:

![](doc_img_src/create_staffbizlet.png)

- Name: set class name to StaffBizlet
- Superclass: click on Browse, and select BizLet<Staff> as Superclass.

Then click Finish.

The `StaffBizlet` class was created, however we will need to make some changes here.

![](doc_img_src/staffbizlet_1.png)

We will fix these issues by using Eclipse Quick Fix suggestions (multiple class imports will be needed).

![](doc_img_src/staffbizlet_2.png)

![](doc_img_src/staffbizlet_3.png)

Alright, after following the Quick Fix suggestions we've fixed the above two issues.

Next, we will override the `newInstance` method to read `Staff information` if it has already been created.

![](doc_img_src/staffbizlet_4.png)
![](doc_img_src/staffbizlet_5.png)

Eclipse will generate `newInstance` method and override anotation for us. We will need to update the method like below:
```java
@Override
public Staff newInstance(Staff bean) throws Exception {
	// Create Document Query for Staff Document
	DocumentQuery dq = CORE.getPersistence().newDocumentQuery(Staff.MODULE_NAME, Staff.DOCUMENT_NAME);
	
	dq.getFilter().addEquals(Staff.userPropertyName, ModulesUtil.currentAdminUser());
	
	// Create staff from dq bean result
	Staff staff = dq.beanResult();
	
	// in case of staff is null, we will return an empty bean with User and Contact Information
	if (staff == null) {
		bean.setUser((UserExtension) ModulesUtil.currentAdminUser());
		return bean;
	}
	// else return staff
	return staff;
}
```
Save the `StaffBizlet` class and run the `Generate Domain` command, then re-deploy your application to your server.

Once done, login to your application as a `Project Member` and click on the `My Staff Information` link, now we can see the data loaded properly.

![](doc_img_src/staffbizlet_6.png)

### 10-3 - Only allow Staff Manager to select Users
As you can see, when we login to the application as a `Project` member I also can see the `User` select box. This is not good practice in production application. So in this section we will enhance our application to make sure this `User` select box is visible for `Staff Manager` only.
![](doc_img_src/staff_info_1.png)

To archive our purpose, we will work with `condition`.

Huh, what is the document condition?

Quick answer is as below:

- Document conditions are code snippets which return a Java boolean value, and which can be used by view declarations.

- By restricting client-side view conditions to server-side compiled code rather than client-side Javascript (or other client script), the risks of developer bugs is significantly reduced. Only the result of the condition is passed to the client, so the chance of an invalid or unintended result is minimised. This also means that client interactions can have access to the results of the full breadth of the server-side code base, utilities and libraries, while all code is maintained in one central location. The additional benefit is that all application code is in one language.

Sound right for us right?

So how we can apply this to our case?

Let us define it first.

Lets open `Staff.xml` file, scroll down to very bottom. Right after attributes definition we will add conditions definition like below:

```xml
<conditions>
	<condition name="staffManager">
		<expression><![CDATA[isUserInRole("todo","StaffManager")]]></expression>
	</condition>
</conditions>
```

This condition will check if the logged in user's role is Staff Manager or not.

Then apply it to `Staff` view.

Open `_contactInfo.xml` and change `user` binding like below:
```xml
<row>
	<item>
		<lookupDescription descriptionBinding="bizKey" binding="user" visible="staffManager"/>
	</item>
</row>
```
Once done, save the file, run the `Generate Domain` command and re-deploy your application to apply the condition.

Now when we are logged in as a `Project Member` the `User` dropdownbox will disappear.

![](doc_img_src/staff_info_2.png)
