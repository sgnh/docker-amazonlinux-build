FROM amazonlinux

RUN yum -y upgrade

RUN yum groupinstall -y "Development Tools"

RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
RUN yum -y install nodejs

RUN curl --silent -o /etc/yum.repos.d/yarn.repo https://dl.yarnpkg.com/rpm/yarn.repo
RUN yum -y install yarn
