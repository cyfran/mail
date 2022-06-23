FROM centos:7
MAINTAINER Fortest <fortest@test.com>
LABEL Description="goautodial test"
RUN yum upgrade -y
RUN yum install -y postfix dovecot
RUN wget https://raw.githubusercontent.com/cyfran/mail/main/install.sh
RUN bash install.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh
ENV JELASTIC_EXPOSE=FALSE
CMD ["/run.sh"]
