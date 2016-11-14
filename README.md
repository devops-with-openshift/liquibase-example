##DB Change Management With Liquibase##

This serves as an example liquibase set up following the liquibase's best practices as outlined on the [liquibase website](http://www.liquibase.org/bestpractices.html).

###Example###
You will find the required jar files in the lib folder of the packaged version of liquibase which you can update:

* snakeyaml-1.17.jar
* liquibase.jar

Using the Postgres driver - but easily converted to any liquibase supported database (add a new folder to /changesets directory)

* postgresql-9.4.1212.jar

The example creates a 'test' schema with a layout and data that was shipped as part of liquibase documentation. (Airline, Cities, Flights, etc).

The schema generation uses the functionality added in liquibase 3.X to use annotated sql scripts for data loading (see script in /data directory)

###Openshift Considerations###

The example makes use of [Openshift deployment hooks](https://docs.openshift.com/container-platform/3.3/dev_guide/deployments.html#lifecycle-hooks)
to deploy a java based image in the same project as the postgres datamabase container. This could easily have been a sidecar container, but having a 
separate deployment configuration separates the two nicely.

###Deployment instructions for Openshift###
