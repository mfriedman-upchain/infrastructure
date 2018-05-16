FROM jboss/wildfly

ARG adminPassword

RUN test -n "$adminPassword"

RUN /opt/jboss/wildfly/bin/add-user.sh admin ${adminPassword} --silent

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]



