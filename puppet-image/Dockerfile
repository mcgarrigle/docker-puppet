FROM base:latest
RUN rpm --import https://yum.puppetlabs.com/RPM-GPG-KEY-puppet
RUN yum install -y https://yum.puppet.com/puppet6-release-el-7.noarch.rpm
RUN yum install -y puppetserver
RUN echo -e "*" > /etc/puppetlabs/puppet/autosign.conf
RUN echo "export PATH=$PATH:/opt/puppetlabs/bin" >> /root/.bashrc
RUN /opt/puppetlabs/puppet/bin/gem install r10k
RUN systemctl enable puppetserver
EXPOSE 8041
