FROM centos:6

# yum update
RUN yum -y update && yum clean all
RUN yum -y install openssh-server

RUN sed -ri 's/^#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/^UsePAM yes/UsePAM no/' /etc/ssh/sshd_config

RUN /etc/init.d/sshd start

RUN echo 'root:rootpass' | chpasswd

EXPOSE 22
CMD /sbin/init

