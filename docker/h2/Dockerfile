# Creates the minimum environment to package and run this Skyve application.
# Note that this uses an in-memory database and is only useful for demonstration/development.
FROM jboss/wildfly:13.0.0.Final

ENV LANG en_US.UTF-8

USER root
RUN mkdir /content
RUN chown jboss:jboss /content

USER jboss
ADD todoApp.war /opt/jboss/wildfly/standalone/deployments/todoApp.war
ADD todoApp.json /opt/jboss/wildfly/standalone/deployments
ADD todoApp-ds.xml /opt/jboss/wildfly/standalone/deployments
RUN touch /opt/jboss/wildfly/standalone/deployments/todoApp.war.dodeploy

ENV SKYVE_CONTENT='/content/' \
    SKYVE_DATASTORE_DIALECT='org.skyve.impl.persistence.hibernate.dialect.MySQL56InnoDBSpatialDialect' \
    DATABASE_URL='todoApp_db' \
    SKYVE_SECURITY_DOMAIN_NAME='todoApp' \
    SKYVE_JNDI_NAME='todoAppDB'

ENTRYPOINT [ "sh", "-c", "/opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 --debug" ]