# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
FROM ivandrocolombo/wildfly:1.0
LABEL MAINTAINER="iColombo"
RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin.CS1021
ADD /target/hello-world/.war /opt/jboss/wildfly/standalone/deployments/
CMD ["/bin/sh"]
