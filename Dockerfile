# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
FROM jboss/wildfly:latest
LABEL MAINTAINER="iColombo"
RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin.CS1021
ADD /target/hello-world-jsf-1.0.war /opt/jboss/wildfly/standalone/deployments/
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
